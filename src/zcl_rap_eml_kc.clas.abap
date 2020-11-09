CLASS zcl_rap_eml_kc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_kc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    READ ENTITIES OF ZI_RAP_Trav_kc
*          ENTITY travel
*            FROM VALUE #( ( TravelUUID = '595906A09DA9D65217000C0262372D9B' ) )
*          RESULT DATA(travels).
*
*    out->write( travels ).

*    READ ENTITIES OF ZI_RAP_Trav_kc
*      ENTITY travel
*        FIELDS ( AgencyID CustomerID )
*      WITH VALUE #( ( TravelUUID = '595906A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(travels).
*    out->write( travels ).

*    READ ENTITIES OF ZI_RAP_Trav_kc
*      ENTITY travel
*        all fields
*      WITH VALUE #( ( TravelUUID = '595906A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(travels).
*    out->write( travels ).

*    READ ENTITIES OF ZI_RAP_Trav_kc
*      ENTITY travel by \_Booking
*        all fields
*      WITH VALUE #( ( TravelUUID = '595906A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).

* READ ENTITIES OF ZI_RAP_Trav_kc
*       ENTITY travel
*         ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*       RESULT DATA(travels)
*       FAILED DATA(failed)
*       REPORTED DATA(reported).
*
*     out->write( travels ).
*     out->write( failed ).    " complex structures not supported by the console output
*     out->write( reported ).  " complex structures not supported by the console output

*     MODIFY ENTITIES OF ZI_RAP_Trav_kc
*       ENTITY travel
*         UPDATE
*           SET FIELDS WITH VALUE
*             #( ( TravelUUID  = '9C5806A09DA9D65217000C0262372D9B'
*                  Description = 'I like RAP@openSAP' ) )
*
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*
*COMMIT ENTITIES
*       RESPONSE OF ZI_RAP_Trav_kc
*       FAILED     DATA(failed_commit)
*       REPORTED   DATA(reported_commit).
*     out->write( 'Update done' ).


*    MODIFY ENTITIES OF ZI_RAP_Trav_kc
*          ENTITY travel
*            CREATE
*              SET FIELDS WITH VALUE
*                #( ( %cid        = 'MyContentID_1'
*                     AgencyID    = '70012'
*                     CustomerID  = '14'
*                     BeginDate   = cl_abap_context_info=>get_system_date( )
*                     EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                     Description = 'I like RAP@openSAP' ) )
*
*         MAPPED DATA(mapped)
*         FAILED DATA(failed)
*         REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Trav_kc
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).


     " step 8 - MODIFY Delete
    MODIFY ENTITIES OF ZI_RAP_Trav_kc
      ENTITY travel
        DELETE FROM
          VALUE
            #( ( TravelUUID  = '02DAC0EC08C01EEB88D10670D6F653E5' ) )

     FAILED DATA(failed)
     REPORTED DATA(reported).

    COMMIT ENTITIES
      RESPONSE OF ZI_RAP_Trav_kc
      FAILED     DATA(failed_commit)
      REPORTED   DATA(reported_commit).

    out->write( 'Delete done' ).

  ENDMETHOD.



ENDCLASS.
