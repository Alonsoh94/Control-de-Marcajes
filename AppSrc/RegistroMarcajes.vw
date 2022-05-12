Use Windows.pkg
Use DFClient.pkg
Use cDbCJGrid.pkg
Use cdbCJGridColumn.pkg
Use cNacionalidadDataDictionary.dd
Use cEmpleadoDataDictionary.dd
Use cTipoMarcajeDataDictionary.dd
Use cMarcajeDataDictionary.dd
Use cDbCJGridColumnSuggestion.pkg
Use cCJGridColumn.pkg

Activate_View Activate_RegistroMarcajes for RegistroMarcajes
Object RegistroMarcajes is a dbView
    Object oTipoMarcaje_DD is a cTipoMarcajeDataDictionary
    End_Object

    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object

    Object oEmpleado_DD is a cEmpleadoDataDictionary
        Set DDO_Server to oNacionalidad_DD
    End_Object

    Object oMarcaje_DD is a cMarcajeDataDictionary
        Set DDO_Server to oTipoMarcaje_DD
        Set DDO_Server to oEmpleado_DD
    End_Object

    Set Main_DD to oMarcaje_DD
    Set Server to oMarcaje_DD

    Set Border_Style to Border_Thick
    Set Size to 236 498
    Set Location to 2 2
    Set Label to "Registro de Marcajes"
    Set Bitmap_Style to Bitmap_Center
    

    Object oDbGroup1 is a dbGroup
        Set Size to 207 480
        Set Location to 13 11
        Set Label to "Registro de Marcajes"

        Object oDbCJGrid1 is a cDbCJGrid
            Set Size to 183 463
            Set Location to 14 9

            Object oMarcaje_Numero is a cDbCJGridColumn
                Entry_Item Marcaje.Numero
                Set piWidth to 52
                Set psCaption to "Numero"
                Set pbCapslock to True
            End_Object
            
            

            Object oMarcaje_Empleado is a cDbCJGridColumn
                Entry_Item Empleado.Numero 
                Set piWidth to 69
                Set psCaption to "Empleado"
            End_Object

            Object ColumnaUnida is a cDbCJGridColumn
                
                Set piWidth to 144
                Set psCaption to "Todo"
                Set Visible_State to True
            End_Object

            Object oEmpleado_PrimerNombre is a cDbCJGridColumn 
                               
                Entry_Item Empleado.PrimerApellido
                
                Set piWidth to 226
                Set psCaption to "Nombre Completo"
                Set pbResizable to False
            End_Object

            Object oMarcaje_FechaMarcaje is a cDbCJGridColumn
                Entry_Item Marcaje.FechaMarcaje
                Set piWidth to 87
                Set psCaption to "Fecha"
            End_Object

            Object oMarcaje_HoraMarcaje is a cDbCJGridColumn
                Entry_Item Marcaje.HoraMarcaje
                Set piWidth to 91
                Set psCaption to "Hora"
            End_Object

            Object oMarcaje_TipoMarcaje is a cDbCJGridColumn
                Entry_Item TipoMarcaje.Numero
                Set piWidth to 72
                Set psCaption to "Tipo Marcaje"
                Set Prompt_Button_Mode to PB_PromptOn
                Set Prompt_Object of oMarcaje_TipoMarcaje to (ListaTipoMarcaje(Current_Object))
                
            End_Object

            Object oTipoMarcaje_TipoMarcaje is a cDbCJGridColumn
                Entry_Item TipoMarcaje.TipoMarcaje
                Set piWidth to 69
                Set psCaption to "Marcaje"
                
            End_Object
        End_Object
    End_Object

End_Object
