//**************************************************************
// TableLookup.tpl for Windows application for Spanish 
// translated by Moose Software (www.moose-software.com) 
// 13/07/2010 Revised for VDF 16.0 by Moose Software
// 05/02/2012 Revised for VDF 17.0 by Moose Software
// 13/06/2013 Revised for VDF 17.1 by Moose Software
// 02/05/2014 Revised for VDF 18.0 by Moose Software
//*************************************************************

Use Windows.pkg
Use DFClient.pkg
use DFSellst.pkg
Use cNacionalidadDataDictionary.dd
Use cEmpleadoDataDictionary.dd

Object ListaEmpleado is a dbModalPanel
    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object

    Object oEmpleado_DD is a cEmpleadoDataDictionary
        Set DDO_Server to oNacionalidad_DD
    End_Object

    Set Main_DD to oEmpleado_DD
    Set Server to oEmpleado_DD

    Set Size to 131 251
    Set Location to 5 5
    Set Border_Style to Border_Thick
    Set Label to "Lista de Empleado"

    Object oSelList is a dbList
        Set peAnchors to anAll
        Set Size to 103 243
        Set Location to 5 5

        Begin_Row
            Entry_Item Empleado.Numero
            Entry_Item (Trim(Empleado.PrimerNombre) + '  ' + Trim(Empleado.SegundoNombre) + '  ' + Trim(Empleado.PrimerApellido) + '  ' + Trim(Empleado.SegundoApellido) )
         //   Entry_Item Empleado.SegundoNombre
         //   Entry_Item Empleado.PrimerApellido
         //   Entry_Item Empleado.SegundoApellido
            Entry_Item Nacionalidad.Pais
        End_Row

        Set Main_File to Empleado.File_Number

        Set Form_Width 0 to 24
        Set Resize_Column_State to False
        Set Header_Label 0 to "#"
        Set Form_Width 1 to 150
        Set Resize_Column_State to False
        Set Header_Label 1 to "Nombres y Apellidos"      
   
        Set Form_Width 5 to 60
        Set Header_Label 5 to "Pais"
    End_Object

    Object oOK_bn is a Button
        Set Label     to "&Aceptar"
        Set Location to 113 87
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Ok of oSelList
        End_Procedure

    End_Object

    Object oCancel_bn is a Button
        Set Label     to "&Cancelar"
        Set Location to 113 141
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object

    Object oSearch_bn is a Button
        Set Label     to "&Buscar..."
        Set Location to 113 195
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object

    On_Key Key_Alt+Key_A Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_B Send KeyAction of oSearch_bn

End_Object

//*********************************************** end of TableLookup.tpl for Spanish ****************

