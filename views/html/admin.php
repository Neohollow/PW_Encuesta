<?php
  require __DIR__.'/logout/logout.php';//llamada implicita a check to close
  //checkTocloseSession();
  //echo "Bienvenido ";
?>
<!DOCTYPE HTML>
<html>
  <head>
	<link rel="stylesheet" href="views/html/estilos/encuesta.css">
  </head>
  <body>
  	<?php
  		checkTocloseSession();
  	?>
  	<center><h1>Admin panel</h1>
  		<br/>
  		<a href="statistics/est.php" id="statistics">Ver estadísticas</a>
  	</center>
  </body>
 </html>
