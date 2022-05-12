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
    Set Size to 164 422
    Set Location to 2 2
    Set Label to "Registro de Empleado"
    Set piMaxSize to 164 450
    Set piMinSize to 164 422

    Object oDbGroup1 is a dbGroup
        Set Size to 128 164
        Set Location to 29 9
        Set Label to "Datos Personales"
        Set Color to clSilver

        Object oEmpleado_Numero is a dbForm
            Entry_Item Empleado.Numero
            Set Location to 21 66
            Set Size to 13 30
            Set Label to "Numero:"
            Set Prompt_Button_Mode to PB_PromptOn
            Set Label_Color to clSilver
        End_Object

        Object oEmpleado_PrimerNombre is a dbForm
            Entry_Item Empleado.PrimerNombre
            Set Location to 36 66
            Set Size to 13 87
            Set Label to "PrimerNombre:"
            Set Label_Color to clSilver
        End_Object

        Object oEmpleado_SegundoNombre is a dbForm
            Entry_Item Empleado.SegundoNombre
            Set Location to 51 66
            Set Size to 13 87
            Set Label to "SegundoNombre:"
            Set Label_Color to clSilver
        End_Object

        Object oEmpleado_PrimerApellido is a dbForm
            Entry_Item Empleado.PrimerApellido
            Set Location to 66 66
            Set Size to 13 87
            Set Label to "PrimerApellido:"
            Set Label_Color to clSilver
        End_Object

        Object oEmpleado_SegundoApellido is a dbForm
            Entry_Item Empleado.SegundoApellido
            Set Location to 82 66
            Set Size to 13 87
            Set Label to "SegundoApellido:"
            Set Label_Color to clSilver
        End_Object

        Object oNacionalidad_Pais is a dbForm
            Entry_Item Nacionalidad.Pais
            Set Location to 98 92
            Set Size to 13 61
        End_Object

        Object oEmpleado_Nacionalidad is a dbForm
            Entry_Item Nacionalidad.Numero
            Set Location to 98 66
            Set Size to 13 22
            Set Label to "Nacionalidad:"
            Set Prompt_Button_Mode to PB_PromptOn
            Set Prompt_Object to (ListaNacionalidad(Current_Object))
          
        End_Object
    End_Object

    Object oDbListEmpleado is a dbList
        Set Size to 131 243
        Set Location to 29 178
        

        Begin_Row
            Entry_Item Empleado.Numero             
            Entry_Item (Trim(Empleado.PrimerNombre) + ' ' + Trim( Empleado.SegundoNombre))
            Entry_Item (Trim(Empleado.PrimerApellido) + ' ' + Trim( Empleado.SegundoApellido))
            Entry_Item Nacionalidad.Pais
        End_Row

        Set Main_File to Empleado.File_Number

        Set Form_Width 0 to 25
        Set Header_Label 0 to "Num"
        Set Form_Width 1 to 80
        Set Header_Label 1 to "Nombres "
        Set Form_Width 2 to 80
        Set Header_Label 2 to "Apellidos"
        Set Form_Width 3 to 50
        Set Header_Label 3 to "Pais"
    End_Object

Cd_End_Object
