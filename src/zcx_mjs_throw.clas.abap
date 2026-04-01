CLASS zcx_mjs_throw DEFINITION
  PUBLIC
  INHERITING FROM cx_no_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA val TYPE zif_mjs=>ty_value.
    METHODS constructor
      IMPORTING is_val TYPE zif_mjs=>ty_value OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcx_mjs_throw IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor.
    val = is_val.
  ENDMETHOD.
ENDCLASS.
