INTERFACE zif_abapgit_gui_jumper
  PUBLIC.

  METHODS jump
    IMPORTING
      !is_item         TYPE zif_abapgit_definitions=>ty_item
      !iv_sub_obj_name TYPE zif_abapgit_definitions=>ty_item-obj_name OPTIONAL
      !iv_sub_obj_type TYPE zif_abapgit_definitions=>ty_item-obj_type OPTIONAL
      !iv_line_number  TYPE i OPTIONAL
      !iv_new_window   TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rv_exit)   TYPE abap_bool
    RAISING
      zcx_abapgit_exception.

  METHODS jump_adt
    IMPORTING
      !is_item         TYPE zif_abapgit_definitions=>ty_item
      !iv_sub_obj_name TYPE zif_abapgit_definitions=>ty_item-obj_name
      !iv_line_number  TYPE i
    RETURNING
      VALUE(rv_exit)   TYPE abap_bool
    RAISING
      zcx_abapgit_exception.

ENDINTERFACE.