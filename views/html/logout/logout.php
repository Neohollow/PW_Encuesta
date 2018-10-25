 <?php
 function checkTocloseSession()
 {
 	?>
 	<form action="" method="post">
    	<div id="c_sesion"><input type="submit" name="c_sesion" value="Cerrar Sesión"/></div>
 	</form>
 	<?php
	 if(isset($_POST["c_sesion"]))
	 {
	  session_unset($_SESSION["datos_sesion"]);
	  header(rtrim("Location: /".rtrim(PROJECT_ROOT)."/"));
	 }
 }
 ?>
 