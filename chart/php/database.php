<?php

class Database {
	
    private $host = DB_HOST;
    private $user = DB_USER;
    private $pass = DB_PASSWORD;
    private $dbname = DB_NAME;
 
    private $dbhost;
    private $error;
    private $stmt;
 
    public function __construct(){
        // Set DSN
        //TODO dynamic host
        $dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->dbname;
        // Set options
        $options = array(
            PDO::ATTR_PERSISTENT    => true,
            PDO::ATTR_ERRMODE       => PDO::ERRMODE_EXCEPTION
        );
        // new PDO instanace
        try{
            $this->dbhost = new PDO($dsn, $this->user, $this->pass, $options);
        }
        catch(PDOException $err){
            $this->error = $err->getMessage();
        }
    }
    
    public function close(){
        $this->dbhost = null;
    }
    //create query
    public function query($query){
        $this->stmt = $this->dbhost->prepare($query);
    }
    
    //bind params to query
    public function bind($param, $value, $type = null){
        if (is_null($type)) {
            switch (true) {
              case is_int($value):
                $type = PDO::PARAM_INT;
                break;
              case is_bool($value):
                $type = PDO::PARAM_BOOL;
                break;
              case is_null($value):
                $type = PDO::PARAM_NULL;
                break;
              default:
                $type = PDO::PARAM_STR;
            }
        }

        $this->stmt->bindValue($param, $value, $type);
    }
    
    //execute query
    public function execute(){
        return $this->stmt->execute();
    }
    
    //get results of query
    public function resultset(){
        $this->execute();
        return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    //get number of rows in results
    public function rowCount(){
        return $this->stmt->rowCount();
    }
    
    //returns single row of data
    public function single(){
        $this->execute();
        return $this->stmt->fetch(PDO::FETCH_ASSOC);
    }
    
    public function lastInsertId(){
        return $this->dbh->lastInsertId();
    }
    
    public function beginTransaction(){
        return $this->dbh->beginTransaction();
    }
    
    public function endTransaction(){
        return $this->dbh->commit();
    }
    
    public function cancelTransaction(){
        return $this->dbh->rollBack();
    }
    
    public function debugDumpParams(){
        return $this->stmt->debugDumpParams();
    }
    
    public function encryptData($data){
    	return $data;
    }
    
    public function decryptData($data){
    	return $data;
    }
}


?>