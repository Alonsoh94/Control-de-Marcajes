Use Windows.pkg
Use DFClient.pkg
Use cNacionalidadDataDictionary.dd
Use cEmpleadoDataDictionary.dd
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cdbCJGridColumn.pkg
Use cDbCJGridColumnSuggestion.pkg
Use dfSelLst.pkg

Deferred_View Activate_RegistroEmpleado for ;
Object RegistroEmpleado is a dbView
    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object

    Object oEmpleado_DD is a cEmpleadoDataDictionary
        Set DDO_Server to oNacionalidad_DD
    End_Object

    Set Main_DD to oEmpleado_DD
    Set Server to oEmpleado_DD

    Set Border_Style to Border_Thick
    Set Size to 131 166
    Set Location to 2 2
    Set Label to "Registro de Empleado"
    Set piMaxSize to 131 166
    Set piMinSize to 131 166

    Object oDbGroup1 is a dbGroup
        Set Size to 128 164
        Set Location to 3 3
        Set Label to "Datos Personales"
        Set Color to clSilver

        Object oEmpleado_Numero is a dbForm
            Entry_Item Empleado.Numero
            Set Location to 21 66
            Set Size to 13 30
            Set Label to "Numero:"
            Set Prompt_Button_Mode to PB_PromptOn
            Set Label_Color to clSilver
            Set Label_Col_Offset to 30
        End_Object

        Object oEmpleado_PrimerNombre is a dbForm
            Entry_Item Empleado.PrimerNombre
            Set Location to 36 66
            Set Size to 13 87
            Set Label to "Primer Nombre:"
            Set Label_Color to clSilver
            Set Label_Col_Offset to 53
        End_Object

        Object oEmpleado_SegundoNombre is a dbForm
            Entry_Item Empleado.SegundoNombre
            Set Location to 51 66
            Set Size to 13 87
            Set Label to "Segundo Nombre:"
            Set Label_Color to clSilver
        End_Object

        Object oEmpleado_PrimerApellido is a dbForm
            Entry_Item Empleado.PrimerApellido
            Set Location to 66 66
            Set Size to 13 87
            Set Label to "Primer Apellido:"
            Set Label_Color to clSilver
            Set Label_Col_Offset to 54
        End_Object

        Object oEmpleado_SegundoApellido is a dbForm
            Entry_Item Empleado.SegundoApellido
            Set Location to 82 66
            Set Size to 13 87
            Set Label to "Segundo Apellido:"
            Set Label_Color to clSilver
        End_Object

        Object oNacionalidad_Pais is a dbForm
            Entry_Item Nacionalidad.Pais
            Set Location to 98 96
            Set Size to 13 57
        End_Object

        Object oEmpleado_Nacionalidad is a dbForm
            Entry_Item Nacionalidad.Numero
            Set Location to 98 66
            Set Size to 13 27
            Set Label to "Nacionalidad:"
            Set Prompt_Button_Mode to PB_PromptOn
            Set Prompt_Object to (ListaNacionalidad(Current_Object))
            Set Label_Col_Offset to 47
          
        End_Object
    End_Object

Cd_End_Object
