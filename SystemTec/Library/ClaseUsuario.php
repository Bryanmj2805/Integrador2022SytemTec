<?php
//etiqueta para indicar que el dato que recibira es un array
declare(strict_types=1);
class ClaseUsuario
{
    public function FormUsuario(array $array){
        //clase anonima:no contiene un nombre
        //retornamos una clase anonima
        return new class($array){
            public $NID;
            public $Nombre;
            public $Apellidos;
            public $Celular;
            public $Email;
            public $User;
            public $Password;
            public $Role;
            public $Estado;
            function __construct($array){
                if(0 < count($array)){
                    //Inicializar atributos obtenidos de los array
                    if(!empty($array["NID"])) {$this->NID = $array["NID"];}
                    if(!empty($array["Nombre"])) {$this->Nombre = $array["Nombre"];}
                    if(!empty($array["Apellidos"])) {$this->Apellidos = $array["Apellidos"];}
                    if(!empty($array["Celular"])) {$this->Celular = $array["Celular"];}
                    if(!empty($array["Email"])) {$this->Email = $array["Email"];}
                    if(!empty($array["User"])) {$this->User = $array["User"];}
                    if(!empty($array["Password"])) {$this->Password = $array["Password"];}
                    if(!empty($array["Role"])) {$this->Role = $array["Role"];}  
                    if(!empty($array["Estado"])) {$this->Estado = $array["Estado"];}                  
                }
            }
        };
    }
}
?>