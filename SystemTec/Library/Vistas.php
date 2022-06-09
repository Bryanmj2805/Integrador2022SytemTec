<?php
class Vistas
{
    public function Render($controllers, $view, $model1,$model2,$model3)
    {
        //obtenemos la clase a la que se refiere el controlador
        //se convierte en arreglo para obtener lo buscado.
        $array = explode ("Controlador",get_class($controllers));
        //obtenemos el dato de posicion, es decir recogemos la palabra 
        $controller = $array[0];
        require VIEWS.DFT."head.html";
        require VIEWS.$controller.'/'.$view.'.html';
        require VIEWS.DFT."footer.html";
    }
}
?>