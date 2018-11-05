<?php
	/**
 	 * @author José Joaquín Pérez-Calderón Ortiz
 	 * @author José Manuel Morales García
 	 * @version 1.0
 	 */
	define('PROJECT_ROOT',basename(dirname(__FILE__)).PHP_EOL);
	
	require(__DIR__.'/kernel/index.php');//Incluimos el kernel
	/*
		Comprobamos si el usuario puede sufrir anomalías.
		En dicho caso se lo notificamos en una alerta.
	*/
	checkPHPV();
?>