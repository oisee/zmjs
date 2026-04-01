CLASS zcx_mjs_runtime DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA error TYPE string.
    METHODS constructor
      IMPORTING iv_error TYPE string OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcx_mjs_runtime IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor.
    error = iv_error.
  ENDMETHOD.
ENDCLASS.
