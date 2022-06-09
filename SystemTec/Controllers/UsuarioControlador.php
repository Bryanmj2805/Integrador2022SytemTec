<?php
class UsuarioControlador extends Controladores
{
    public function __construct() {
        //atraeremos el metodo constructor de la clase Constroladores
        //de esta manera se ejecutara el constructor de la clase trayendo la siguiente funcion
        //como esta heredando tenemos acceso 
        parent:: __construct();

    }

    public function Registrar(){
        //recepcionamos los roles
        $roles = $this->role->GetRoles();
        $this->view->Render($this,"registrar",null,null,$roles);  
    }

    public function AgregarUsuario(){
        //validacion para que no envie el formulario a menos que esten completo los datos
        $execute = true;
        if(empty($_POST["nid"])){
            $execute = false;
        }
        if(empty($_POST["nombre"])){
            $execute = false;
        }
        if(empty($_POST["apellidos"])){
            $execute = false;
        }
        if(empty($_POST["celular"])){
            $execute = false;
        }
        if(empty($_POST["email"])){
            $execute = false;
        }
        if(empty($_POST["user"])){
            $execute = false;
        }
        if(empty($_POST["password"])){
            $execute = false;
        }
        if(empty($_POST["role"])){
            $execute = false;
        }

        //recepcionamos los datos
        $model1 = array(
            "NID"=>$_POST["nid"],
            "Nombre"=>$_POST["nombre"],
            "Apellidos"=>$_POST["apellidos"],
            "Celular"=>$_POST["celular"],
            "Email"=>$_POST["email"],
            "User"=>$_POST["user"],
            "Password"=>$_POST["password"],
            "Role"=>$_POST["role"],   
        );

        if($execute){
            $value = $this->model->AgregarUsuario($this->FormUsuario($model1));
            if(is_bool($value)){
                header('Location: usuario');
            } else {
                header('Location: registrar');
            }    
        }
    }

    public function Usuario(){
        $this->view->Render($this,"usuario",null,null,null);
    }
}
?>