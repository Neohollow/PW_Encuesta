<!DOCTYPE HTML>
<html>
  <head>

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="views/html/estilos/encuesta.cs
s">
  </head>
<body id="LoginForm">
  <?php
 /**
  * @author José Joaquín Pérez-Calderón Ortiz - José Manuel Morales García
  * @version 1.0
  */
 define('USER','root');//Cambiar usuario
 define('PASS','');//Cambiar la pass
 //define('FECHA_CADENA',strtotime(FECHA));

 require __DIR__.'./../../Clases/conexion.php';
 $dsn = 'mysql:dbname=encuesta;host=127.0.0.1;';
 //Creamos la conexión

 $conexion = new PDOp($dsn,USER,PASS);//Creamos la conexión
 $conexion->query("SET NAMES 'utf8'");
 /**
  * Comprobamos si el servidor soporta la version de PHP actual.
  */


/**
*Comprobación del Login
*/
$boton=$_POST["enviar"];
$usuario=$_POST["usuario"];
$contrasenia=sha1($_POST["contrasena"]);
if(isset($boton)){
  $sql="select usuario, contrasenna from usuario where usuario in('".$usuario."')and contrasenna in('".$contrasenia."')";
  $stm=$conexion->query($sql);
  $res=$stm->fetch();
  echo $res["tipo"];
  if($res["tipo"]==0)//1 = Profesor 0= Alumno
  $router->get(rtrim(PROJECT_ROOT)."/",__DIR__.'/../views/html/administracion');
  else{

  $router->get(rtrim(PROJECT_ROOT)."/",__DIR__.'/../views/html/encuesta');
  }
}



 ?>
<div class="container align-items-center">
<div class="row">
<div class="col-sm-6 offset-sm-3 text-center">
<h1 class="form-heading">Formulario</h1>
  <div class="login-form">
  <div class="main-div">
    <div class="panel">
   <h2>Login</h2>
   <p>Email y contraseña</p>
   </div>
    <form id="Login" method="post" action="">

        <div class="form-group">


            <input type="text" class="form-control" name="usuario" placeholder="Usuario">

        </div>

        <div class="form-group">

            <input type="password" class="form-control" name="contrasena" placeholder="Contrase&ntilde;a">

        </div>
        <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>

    </form>
    </div>
<p class="botto-text">&copy;Jos&eacute; Manuel Morales Garc&iacute;a</p>
</div></div></div></div>
</body></html>