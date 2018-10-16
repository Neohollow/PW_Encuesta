<?php
 /**
 * EncuestasUca º Aplicación para gestionar 
 *				º las estadísticas de la universidad
 *
 * @package  Kernel
 * @author   José Joaquín Pérez-Calderón Ortiz
 */

 define('FECHA',date("d-m-Y"));
 define('PHP_V',5);

 //Rutas a cargar
 require __DIR__.'./../views/html/encuesta.php';

 function checkPHPV()
 {
 	$expl_vsn = explode('.', PHP_VERSION);
 	if($expl_vsn[0] < PHP_V)
 		echo "<script type='text/javascript'>alert('¡La version de PHP ".$expl_vsn[0]." es incompatible con nuestro sistema!');</script>;";
 }
 

?>