<?php
//constantes para acceso a carpetas
const LBS = 'Library/';
const VIEWS = 'Views/';
const DFT = 'Default/';
const RQ = 'Resources/';
const URL = 'http://localhost/Integrador2/SystemTEC/';

$controller = "";
$method = "";
$params = "";

$url = $_GET["url"] ?? "Index/Index";

$arrayUrl = explode("/",$url);
if(isset($arrayUrl[0])){
    $controller = $arrayUrl[0];
}
if(isset($arrayUrl[1])){
    if($arrayUrl[1] != ''){
        $method = $arrayUrl[1];

    }
}
if(isset($arrayUrl[2])){
    if($arrayUrl[2] != ''){
        $params = $arrayUrl[2];
    }
}

//Procedimeinto para llamar a una clase y obtener la informacion capturando a la clase asignada
//asi se evita llamar a muchos requiere para acceder a las clases
//afecta solo si se llama desde un controlador
spl_autoload_register(function($class){
    if (file_exists(LBS.$class.".php")){
        require LBS.$class.".php";
    }
});

$controller = $controller.'Controlador';
$controllersPath = "Controllers/".$controller.'.php';
//controlador existe
if (file_exists($controllersPath)){
    require $controllersPath;
    $controller = new $controller();
    if(isset($method)){
        if(method_exists($controller, $method)){
            if(isset($params)){
                $controller->{$method}($params);
            }else{
                $controller->{$method}();
            }
        }
    }
}

?>