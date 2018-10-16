<?php
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

?>

<!DOCTYPE HTML>
<html>
  <head>
  <!-- José Manuel Morales García -->  
	<link rel="stylesheet" href="views/html/estilos/encuesta.css">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>
  <body>
    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
    <title> Encuesta </title>

    <form action="datos.php" method="post">
       <?php
        //Obtener secciones
        $sql1 = "select * from seccion;";
        $stm1 = $conexion->query($sql1);
        // Ejecutamos
        while($row1 = $stm1->fetch())
        {
          echo "<section><div style='text-align: center;'><b>".$row1['tipo_seccion']."</b></div>";
          //Obtener preguntas
          $sql2 = "select * from pregunta as p,seccion as s where s.id_seccion =".$row1["id_seccion"].";";
          $stm2 = $conexion->query($sql2);
          while($row2 = $stm2->fetch())
          {
            echo "<p>".$row2['pregTexto']."</p>";
          }
        }

        
        ?>
      </section>
    </form>
    
  </body>
</html>