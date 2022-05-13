Use Windows.pkg
Use DFClient.pkg
Use cNacionalidadDataDictionary.dd
Use cEmpleadoDataDictionary.dd
Use cTipoMarcajeDataDictionary.dd
Use cMarcajesDataDictionary.dd
Use cDbCJGrid.pkg
Use cdbCJGridColumn.pkg

Deferred_View Activate_pruebaMarcaje for ;
Object pruebaMarcaje is a dbView
    Object oTipoMarcaje_DD is a cTipoMarcajeDataDictionary
    End_Object

    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object

    Object oEmpleado_DD is a cEmpleadoDataDictionary
        Set DDO_Server to oNacionalidad_DD
    End_Object

    Object oMarcajes_DD is a cMarcajesDataDictionary
        Set DDO_Server to oTipoMarcaje_DD
        Set DDO_Server to oEmpleado_DD
    End_Object

    Set Main_DD to oMarcajes_DD
    Set Server to oMarcajes_DD

    Set Border_Style to Border_Thick
    Set Size to 232 457
    Set Location to 7 2
    Set Label to "pruebaMarcaje"

    Object oDbCJGrid1 is a cDbCJGrid
        Set Size to 187 388
        Set Location to 23 33

        Object oMarcajes_Numero is a cDbCJGridColumn
            Entry_Item Marcajes.Numero
            Set piWidth to 86
            Set psCaption to "Numero"
        End_Object

        Object oMarcajes_Empleado is a cDbCJGridColumn
            Entry_Item Empleado.Numero
            Set piWidth to 130
            Set psCaption to "Empleado"
        End_Object

        Object oMarcajes_FechaMarcaje is a cDbCJGridColumn
            Entry_Item Marcajes.FechaMarcaje
            Set piWidth to 177
            Set psCaption to "FechaMarcaje"
        End_Object

        Object oMarcajes_HoraMarcaje is a cDbCJGridColumn
            Entry_Item Marcajes.HoraMarcaje
            Set piWidth to 214
            Set psCaption to "HoraMarcaje"
        End_Object

        Object oMarcajes_TipoMarcaje is a cDbCJGridColumn
            Entry_Item TipoMarcaje.Numero
            Set piWidth to 72
            Set psCaption to "TipoMarcaje"
        End_Object
    End_Object

Cd_End_Object
