<?php
class ModeloUsuario extends Conexion
{
    public function __construct(){
        parent::__construct();
    }

    public function AgregarUsuario($model){
        //retornamos el dato que proporciona el metodo
        //del parametro model
        //return var_dump($model1);
        try {
            $this->db->pdo->beginTransaction();
            $model->Estado = true;
            // insertamos a la tabla
            $query = "INSERT INTO usuarios (NID,Nombre,Apellidos,Celular,Email,User,Password,Role,Estado) VALUES (:NID, :Nombre, :Apellidos, :Celular, :Email, :User, :Password, :Role, :Estado)";
            //preparamos la consula
            $sth = $this->db->pdo->prepare($query);
            $sth->execute((array)$model);
            $this->db->pdo->commit();
            return true;
        } catch (\Throwable $th) {
            $this->db->pdo->rollBack();
            return $th->getMessage();
        }
    }
}
?>