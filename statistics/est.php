<html>
<head>
<link rel="stylesheet" href="../views/html/estilos/encuesta.css">
</head>
<body>
	<form action="" method="post">
    	<div id="c_sesion"><input type="submit" name="c_sesion" value="Atrás"/></div>
 	</form>
<?php
 define('USER','root');//Cambiar usuario
 define('PASS','');//Cambiar la pass
 //define('FECHA_CADENA',strtotime(FECHA));

 require __DIR__.'./../Clases/conexion.php';
 $dsn = 'mysql:dbname=encuesta;host=127.0.0.1;';
 //Creamos la conexión

 $conexion = new PDOp($dsn,USER,PASS);//Creamos la conexión
 $conexion->query("SET NAMES 'utf8'");
	 if(isset($_POST["c_sesion"]))
	 {
	  session_unset($_SESSION["datos_sesion"]);
	  $ruta = $_SERVER['PHP_SELF'];
	  $aTrozos = explode("/", $ruta);
	  header("Location: /".$aTrozos[1]."/");
	 }
	echo "<center><h1>Estadisticas</h1></center>";
	echo "<center><h3>Media Ponderada calificaciones</h3></center>";
	$sqlTotal = "select avg(cast(texto as int)) FROM `resest` WHERE id_pregunta>=12 AND texto not in('NS');";
	$result = $conexion->query($sqlTotal);
	while($res=$result->fetch())
	{
		echo "<center><b>Resultado:</b>".$res[0]."</center>";
	}

?>

<?php
 
?>


</html>