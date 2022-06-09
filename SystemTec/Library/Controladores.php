<?php
//Controladores tienen acceso a las funciones de la clase anonima
class Controladores extends ClaseUsuario
{
    public function __construct() 
    {
        $this -> view = new Vistas();
        $this -> role = new Roles();
        $this -> cargarClaseModelos();
    }

    public function cargarClaseModelos()
    {
        //explode recepciona dos parametros para la separacion
        $array = explode("Controlador",get_class($this));
        //obtenemos el nombre del modelo
        $model = 'Modelo'.$array[0];
        $path = 'Models/'.$model.'.php';
        //verificamos la exstencia
        if(file_exists($path)){
            require $path;
            $this -> model = new $model();
        }
    }
}
?>