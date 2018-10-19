<?php
	/**
	 * @author José Joaquín Pérez-Calderón Ortiz
	 * @package Clases
	 * @version 1.0
	 */
	class PDOp extends PDO 
	{
	    function __construct($dsn, $username="", $password="", $driver_options=array()) {
	        parent::__construct($dsn,$username,$password, $driver_options);
	        $this->setAttribute(PDO::ATTR_STATEMENT_CLASS, array('DBStatement', array($this)));
	    }
	}
	class DBStatement extends PDOStatement 
	{
    	public $dbh;
    	protected function __construct($dbh) 
    	{
        	$this->dbh = $dbh;
    	}
    }
?>