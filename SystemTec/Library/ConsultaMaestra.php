<?php
class ConsultaMaestra
{
    public $pdo;
    function __construct($USER,$PASS,$DB){
        try{
            $this->pdo=new PDO('mysql:host=localhost;dbname='.$DB.';charset=utf8'
            ,$USER,$PASS,[
            ]);
        }catch(\Throwable $th){
            print "La base de datos no existe:".$th->getMessage();
            die();
        }
    }

    //obtener en la base de datos
    //attr: columna
    //table: nombre columna
    //where: clausula
    //param: columna para consultar datos
    public function Select1($attr,$table,$where,$param)
    {
        try {
            $where = $where ?? "";
            $query = "SELECT ".$attr." FROM ".$table.$where;
            //preparamos la consulta
            $sth = $this->pdo->prepare($query);
            //ejecutamos
            $sth->execute($param);
            //respuesta
            $response = $sth->fetchAll(PDO::FETCH_ASSOC);
            return array("results"=>$response);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
        //cerramos la conexion
        $pdo = null;
    }
}
?>