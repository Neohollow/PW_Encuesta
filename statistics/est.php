<html>
<head>
<link rel="stylesheet" href="../views/html/estilos/encuesta.css">
</head>
<body>
	<form action="" method="post">
    	<div id="c_sesion"><input type="submit" name="c_sesion" value="Atrás"/></div>
 	</form>
<?php

	 if(isset($_POST["c_sesion"]))
	 {
	  session_unset($_SESSION["datos_sesion"]);
	  $ruta = $_SERVER['PHP_SELF'];
	  $aTrozos = explode("/", $ruta);
	  header("Location: /".$aTrozos[1]."/");
	 }
	echo "<center><h1>Estadisticas</h1></center>";
?>
</html>