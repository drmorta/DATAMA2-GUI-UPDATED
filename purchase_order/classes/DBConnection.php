<?php
if(!defined('DB_SERVER')){
    require_once("../initialize.php");
}
class DBConnection{

    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $database1 = "order_tracking_system";
    private $database2 = "storage_system";

    public $conn;
    
    public function __construct(){

        if (!isset($this->conn)) {
            
            $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database1);
            
            if (!$this->conn) {
                echo 'Cannot connect to database server';
                exit;
            }            
        }    
        if (!isset($this->conn)) {
            
            $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database2);
            
            if (!$this->conn) {
                echo 'Cannot connect to database server';
                exit;
            }            
        }  
    }
    public function __destruct(){
        $this->conn->close();
    }
}
?>