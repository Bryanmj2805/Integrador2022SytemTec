<?php
class IndexControlador extends Controladores
{
    public function __construct() {
        //atraeremos el metodo constructor de la clase Constroladores
        //de esta manera se ejecutara el constructor de la clase trayendo la siguiente funcion
        //como esta heredando tenemos acceso 
        parent::__construct();
    }

    public function Index(){
        //obteniendo la funcion render
        //asi poder ingresar a la vista index
        $this->view->Render($this,"index",null,null,null);
    }

    public function Paneladm(){
        //obteniendo la funcion render
        //asi poder ingresar a la vista index
        $this->view->Render($this,"paneladm",null,null,null);
    }

    public function Listarusuarios(){
        //obteniendo la funcion render
        //asi poder ingresar a la vista index
        $this->view->Render($this,"listarusuarios",null,null,null);
    }
}
?>