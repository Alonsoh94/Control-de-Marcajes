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
    Set Size to 236 437
    Set Location to 2 2
    Set Label to "Registro de Marcajes"
    Set Bitmap_Style to Bitmap_Center
    Set Auto_Top_Panel_State to False
    Set Auto_Top_Item_State to False
    Set piMaxSize to 236 437
    Set piMinSize to 236 437
    
    

    Object oDbGroup1 is a dbGroup
        Set Size to 218 462
        Set Location to 13 11
        Set Label to "Registro de Marcajes"

        Object oDbCJGrid1 is a cDbCJGrid
            Set Size to 198 402
            Set Location to 11 5
            Set pbAllowColumnRemove to False
            Set pbAllowColumnResize to False
            Set pbAllowColumnReorder to False

            Object oMarcaje_Numero is a cDbCJGridColumn
                Entry_Item Marcaje.Numero
                Set piWidth to 50
                Set psCaption to "Numero"
                Set pbCapslock to True
                Set peTextAlignment to xtpAlignmentCenter
            End_Object
            
            

            Object oMarcaje_Empleado is a cDbCJGridColumn
                Entry_Item Empleado.Numero 
                Set piWidth to 60
                Set psCaption to "Empleado"
                Set peTextAlignment to xtpAlignmentCenter
                Set pbResizable to False
            End_Object
            
            Object oEmpleado_Nombre is a cDbCJGridColumn
                //Set Value to Empleado.PrimerNombre
                Set piWidth to 150
                Set psCaption to "Nombres"
                Set pbFocusable to False
                
                Procedure OnSetCalculatedValue String ByRef sValue
                    
                    Move '' to sValue
                    Append sValue (Trim(Empleado.PrimerNombre)) ' ' (Trim(Empleado.SegundoNombre))
                End_Procedure

            End_Object            

            Object oEmpleado_PrimerNombre is a cDbCJGridColumn
                Entry_Item Empleado.PrimerNombre
                Set piWidth to 62
                Set psCaption to "Nombres"
            End_Object

            Object oEmpleado_SegundoNombre is a cDbCJGridColumn
                Entry_Item Empleado.SegundoNombre
                Set piWidth to 60
            End_Object

            Object oEmpleado_PrimerApellido is a cDbCJGridColumn
                Entry_Item Empleado.PrimerApellido
                Set piWidth to 60
                Set psCaption to "Apellidos"
            End_Object

            Object oEmpleado_SegundoApellido is a cDbCJGridColumn
                Entry_Item Empleado.SegundoApellido
                Set piWidth to 60
            End_Object

            Object oMarcaje_FechaMarcaje is a cDbCJGridColumn
                Entry_Item Marcaje.FechaMarcaje
                Set piWidth to 60
                Set psCaption to "Fecha"
            End_Object

            Object oMarcaje_HoraMarcaje is a cDbCJGridColumn
                Entry_Item Marcaje.HoraMarcaje
                Set piWidth to 60
                Set psCaption to "Hora"
            End_Object

            Object oMarcaje_TipoMarcaje is a cDbCJGridColumn
                Entry_Item TipoMarcaje.Numero
                Set piWidth to 60
                Set psCaption to "# Marcaje"
                Set Prompt_Button_Mode to PB_PromptOn
                Set Prompt_Object of oMarcaje_TipoMarcaje to (ListaTipoMarcaje(Current_Object))
                
            End_Object

            Object oTipoMarcaje_TipoMarcaje is a cDbCJGridColumn
                Entry_Item TipoMarcaje.TipoMarcaje
                Set piWidth to 60
                Set psCaption to "Marcaje"
                
            End_Object
        End_Object
    End_Object

End_Object
