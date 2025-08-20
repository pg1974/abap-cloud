CLASS zpg_cl3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpg_cl3 IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

data il_tabla TYPE STANDARD TABLE OF zpg_table1.

il_tabla = value #(
                  ( client = sy-mandt  clave1 = '1'   url = 'url1' )
                  ( client = sy-mandt  clave1 = '2'   url = 'url2' )
                   ).

INSERT zpg_table1 FROM TABLE @il_tabla.


if sy-subrc is INITIAL.
out->write( 'insertado' ).
else.
out->write( 'mal' ).
ENDIF.



ENDMETHOD.


ENDCLASS.
