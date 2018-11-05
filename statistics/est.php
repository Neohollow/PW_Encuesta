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
	echo "<center><h2>Media Ponderada calificaciones</h2></center>";
	echo "<center><h3>Filtrar:</h3></center>";
	echo "<center><form method='post' action=''><label>Hombre</label><input type='radio' value='Hombre' name='sexo'/><label>Mujer</label><input type='radio' value='Mujer' name='sexo'/>
		<input type = 'submit' value='Filtrar' name='enviar'/>
	</form></center>";


	if(isset($_POST['enviar']))
	{
		$sexo = $_POST["sexo"];

		$sqlPreguntas = "select * from pregunta where id>=12";
		echo "<center><table style='width:50%' id ='tblest'>";
		echo "<tr>
	    		<th>Pregunta</th>
	    		<th>Calificación [0 - 5]</th> 
	  		 </tr>";
	 	$resIni = $conexion->query($sqlPreguntas);
	 	while($row = $resIni->fetch())
	 	{
	 		echo "<tr><td>".$row["pregTexto"]."</td><td style='text-align:center'>
	 		";
	 			$sql = "select avg(cast(texto as int)) FROM `resest` WHERE id_pregunta = ".$row["id"]." AND texto not in('NS') and id_usuario in (select id_usuario from resest where id_pregunta=9 and texto in('".$sexo."'));";
	 			$resulResp = $conexion->query($sql);
	 			while($rowres = $resulResp->fetch())
	 			{
	 				if(round( $rowres[0], 1, PHP_ROUND_HALF_UP)== 0)
	 				{
	 					$rowres = NULL;
	 				}
	 				else
	 				{
	 					echo round( $rowres[0], 1, PHP_ROUND_HALF_UP);
	 				}
	 			}
	 		echo "</td></tr>";
	 	}
		echo "</table>";
	}
	else
	{
		$sqlPreguntas = "select * from pregunta where id>=12";
		echo "<center><table style='width:50%' id ='tblest'>";
		echo "<tr>
	    		<th>Pregunta</th>
	    		<th>Calificación [0 - 5]</th> 
	  		 </tr>";
	 	$resIni = $conexion->query($sqlPreguntas);
	 	while($row = $resIni->fetch())
	 	{
	 		echo "<tr><td>".$row["pregTexto"]."</td><td style='text-align:center'>
	 		";
	 			$sql = "select avg(cast(texto as int)) FROM `resest` WHERE id_pregunta = ".$row["id"]." AND texto not in('NS');";
	 			$resulResp = $conexion->query($sql);
	 			while($rowres = $resulResp->fetch())
	 			{
	 				echo round( $rowres[0], 1, PHP_ROUND_HALF_UP);
	 			}
	 		echo "</td></tr>";
	 	}
		echo "</table>";
	}

?>

<?php
 
?>


</html>