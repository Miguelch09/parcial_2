<?php
class conex //CLASE PARA CONEXION A BASE DE DATOS
{
    public static function con()
    {
        $conexion = mysqli_connect("localhost", "root", "jesussql");
        mysqli_select_db($conexion,"parcial2");
        mysqli_query($conexion,"SET NAMES 'utf8'");
        if(!$conexion)
        {
            return FALSE;
        }
        else
        {
            return $conexion;
            
        }
    }
}
?>