CLASS zcl_mjs_env DEFINITION PUBLIC.
  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_var_entry,
        name TYPE string,
        val  TYPE zif_mjs=>ty_value,
      END OF ty_var_entry,
      tt_vars TYPE HASHED TABLE OF ty_var_entry WITH UNIQUE KEY name.

    " Hash-based storage (global env, closures, catch envs)
    DATA vars       TYPE tt_vars.
    " Slot-based storage (function-local envs): direct index access, no hash
    DATA slots      TYPE zif_mjs=>tt_value_slots.
    DATA slot_map   TYPE REF TO zif_mjs=>tt_slot_map. " shared ref to Function.slot_map

    DATA parent     TYPE REF TO zcl_mjs_env.
    DATA output     TYPE REF TO data.
    DATA returning  TYPE abap_bool.
    DATA ret_val    TYPE zif_mjs=>ty_value.
    DATA breaking   TYPE abap_bool.
    DATA continuing TYPE abap_bool.
    " 'this' binding: dedicated field instead of a vars entry — avoids the
    " hash insert per call and the boxing that a REF TO data binding needed.
    DATA this_val   TYPE zif_mjs=>ty_value.
    DATA this_bound TYPE abap_bool.

    METHODS constructor
      IMPORTING io_parent TYPE REF TO zcl_mjs_env OPTIONAL.
    METHODS get
      IMPORTING iv_name       TYPE string
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    " Resolve a variable in one scope-chain walk, returning existence and value
    METHODS resolve
      IMPORTING iv_name  TYPE string
      EXPORTING ev_found TYPE abap_bool
                es_val   TYPE zif_mjs=>ty_value.
    METHODS set
      IMPORTING iv_name TYPE string
                is_val  TYPE zif_mjs=>ty_value.
    METHODS define
      IMPORTING iv_name TYPE string
                is_val  TYPE zif_mjs=>ty_value.
    " Resolve 'this' by walking up to the nearest env that binds it
    METHODS get_this
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    " Check whether a variable name exists anywhere in the scope chain
    METHODS has
      IMPORTING iv_name        TYPE string
      RETURNING VALUE(rv_found) TYPE abap_bool.
    " Fast slot access — caller must know slot_map is set
    METHODS get_slot
      IMPORTING iv_slot       TYPE i
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    METHODS set_slot
      IMPORTING iv_slot TYPE i
                is_val  TYPE zif_mjs=>ty_value.
    METHODS append_output
      IMPORTING iv_text TYPE string.
    METHODS get_output
      RETURNING VALUE(rv_out) TYPE string.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_mjs_env IMPLEMENTATION.
  METHOD constructor.
    parent = io_parent.
    IF io_parent IS BOUND.
      output = io_parent->output.
    ELSE.
      DATA lv_str TYPE string.
      CREATE DATA output LIKE lv_str.
    ENDIF.
  ENDMETHOD.

  METHOD get.
    " Fast path: slot-based env (function locals)
    IF slot_map IS BOUND.
      READ TABLE slot_map->* WITH TABLE KEY name = iv_name
        ASSIGNING FIELD-SYMBOL(<sm>).
      IF sy-subrc = 0.
        READ TABLE slots INDEX <sm>-slot INTO rs_val.
        RETURN.
      ENDIF.
      " Not a local slot — fall through to vars (for 'arguments', etc.)
    ENDIF.
    READ TABLE vars WITH TABLE KEY name = iv_name ASSIGNING FIELD-SYMBOL(<v>).
    IF sy-subrc = 0.
      rs_val = <v>-val.
      RETURN.
    ENDIF.
    IF parent IS BOUND.
      rs_val = parent->get( iv_name ).
      RETURN.
    ENDIF.
    rs_val-type = zif_mjs=>c_type_undefined. " undefined
  ENDMETHOD.

  METHOD resolve.
    DATA lo_cur TYPE REF TO zcl_mjs_env.
    lo_cur = me.
    ev_found = abap_false.
    CLEAR es_val.

    WHILE lo_cur IS BOUND.
      IF lo_cur->slot_map IS BOUND.
        READ TABLE lo_cur->slot_map->* WITH TABLE KEY name = iv_name
          ASSIGNING FIELD-SYMBOL(<sm>).
        IF sy-subrc = 0.
          READ TABLE lo_cur->slots INDEX <sm>-slot INTO es_val.
          IF sy-subrc <> 0.
            es_val-type = zif_mjs=>c_type_undefined.
          ENDIF.
          ev_found = abap_true.
          RETURN.
        ENDIF.
      ENDIF.

      READ TABLE lo_cur->vars WITH TABLE KEY name = iv_name
        ASSIGNING FIELD-SYMBOL(<v>).
      IF sy-subrc = 0.
        es_val = <v>-val.
        ev_found = abap_true.
        RETURN.
      ENDIF.

      lo_cur = lo_cur->parent.
    ENDWHILE.

    es_val-type = zif_mjs=>c_type_undefined.
  ENDMETHOD.

  METHOD get_this.
    DATA lo_cur TYPE REF TO zcl_mjs_env.
    lo_cur = me.
    WHILE lo_cur IS BOUND.
      IF lo_cur->this_bound = abap_true.
        rs_val = lo_cur->this_val.
        RETURN.
      ENDIF.
      lo_cur = lo_cur->parent.
    ENDWHILE.
  ENDMETHOD.

  METHOD has.
    IF slot_map IS BOUND.
      READ TABLE slot_map->* WITH TABLE KEY name = iv_name TRANSPORTING NO FIELDS.
      IF sy-subrc = 0.
        rv_found = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    READ TABLE vars WITH TABLE KEY name = iv_name TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      rv_found = abap_true.
      RETURN.
    ENDIF.
    IF parent IS BOUND.
      rv_found = parent->has( iv_name ).
      RETURN.
    ENDIF.
    rv_found = abap_false.
  ENDMETHOD.

  METHOD set.
    " Fast path: check slots first
    IF slot_map IS BOUND.
      READ TABLE slot_map->* WITH TABLE KEY name = iv_name
        ASSIGNING FIELD-SYMBOL(<sm>).
      IF sy-subrc = 0.
        set_slot( iv_slot = <sm>-slot is_val = is_val ).
        RETURN.
      ENDIF.
    ENDIF.
    " Walk scope chain
    DATA lo_cur TYPE REF TO zcl_mjs_env.
    lo_cur = me.
    WHILE lo_cur IS BOUND.
      IF lo_cur->slot_map IS BOUND.
        READ TABLE lo_cur->slot_map->* WITH TABLE KEY name = iv_name
          ASSIGNING FIELD-SYMBOL(<sm2>).
        IF sy-subrc = 0.
          lo_cur->set_slot( iv_slot = <sm2>-slot is_val = is_val ).
          RETURN.
        ENDIF.
      ENDIF.
      READ TABLE lo_cur->vars WITH TABLE KEY name = iv_name
        ASSIGNING FIELD-SYMBOL(<v>).
      IF sy-subrc = 0.
        <v>-val = is_val.
        RETURN.
      ENDIF.
      lo_cur = lo_cur->parent.
    ENDWHILE.
    " Not found anywhere — define in current env
    DATA ls_entry TYPE ty_var_entry.
    ls_entry-name = iv_name.
    ls_entry-val  = is_val.
    INSERT ls_entry INTO TABLE vars.
  ENDMETHOD.

  METHOD define.
    " Fast path: slot-based env
    IF slot_map IS BOUND.
      READ TABLE slot_map->* WITH TABLE KEY name = iv_name
        ASSIGNING FIELD-SYMBOL(<sm>).
      IF sy-subrc = 0.
        set_slot( iv_slot = <sm>-slot is_val = is_val ).
        RETURN.
      ENDIF.
      " Not a slot (e.g. 'arguments') — fall through to vars
    ENDIF.
    READ TABLE vars WITH TABLE KEY name = iv_name ASSIGNING FIELD-SYMBOL(<v>).
    IF sy-subrc = 0.
      <v>-val = is_val.
    ELSE.
      DATA ls_entry TYPE ty_var_entry.
      ls_entry-name = iv_name.
      ls_entry-val  = is_val.
      INSERT ls_entry INTO TABLE vars.
    ENDIF.
  ENDMETHOD.

  METHOD get_slot.
    READ TABLE slots INDEX iv_slot INTO rs_val.
  ENDMETHOD.

  METHOD set_slot.
    " Grow the slot table to the written index on demand (slots are not
    " pre-sized: pre-sizing every call regressed call-heavy workloads).
    IF iv_slot > lines( slots ).
      DATA ls_undef TYPE zif_mjs=>ty_value.
      DO iv_slot - lines( slots ) TIMES.
        APPEND ls_undef TO slots.
      ENDDO.
    ENDIF.
    READ TABLE slots INDEX iv_slot ASSIGNING FIELD-SYMBOL(<sv>).
    <sv> = is_val.
  ENDMETHOD.

  METHOD append_output.
    FIELD-SYMBOLS <str> TYPE string.
    ASSIGN output->* TO <str>.
    <str> = <str> && iv_text.
  ENDMETHOD.

  METHOD get_output.
    FIELD-SYMBOLS <str> TYPE string.
    ASSIGN output->* TO <str>.
    rv_out = <str>.
  ENDMETHOD.
ENDCLASS.
