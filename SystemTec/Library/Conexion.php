<?php
class Conexion
{
    function __construct(){
        $this->db = new ConsultaMaestra("root","","BDSystemTEC");
    }
}

?>