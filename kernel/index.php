<?php
 /**
 * EncuestasUca º Aplicación para gestionar 
 *				º las estadísticas de la universidad
 *
 * @package  Kernel
 * @author   José Joaquín Pérez-Calderón Ortiz
 */

 define('FECHA',date("d-m-Y"));
 define('FECHA_CADENA',strtotime(FECHA));

 require __DIR__.'./../Clases/conexion.php';

 require __DIR__.'./../views/html/encuesta.php';

?>