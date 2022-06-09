<?php
//todos los parametros deben ser de ese mismo dato que se especifique
declare (strict_types = 1);
class Roles extends Conexion
{
    public function __construct(){
        parent:: __construct();
    }

    //obteniendo roles de la base de datos
    public function GetRoles(){
        //recupera
        $roles = $this->db->select1("*",'roles',null,null);
        if(is_array($roles)){
            //verificamos si no esta vacio
            if(0 < count($roles['results'])){
                return $roles['results'];
            }
        }else{
            return $roles;
        }
    }
} 
?>