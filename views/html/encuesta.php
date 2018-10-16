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
        <div>
          <center><b>CODIGO DE LA ASIGNATURA<br>
              <br>
            </b></center>
          <center>
            <table style="width: 371px; height: 155px;">
              <tbody>
                <tr>
                  <td style="text-align: center;"><b>TITULACION</b></td>
                  <td style="text-align: center;"><input name="cod_tit" type="text"></td>
                </tr>
                <tr>
                  <td style="text-align: center;"><b> ASIGNATURA</b></td>
                  <td style="text-align: center;"><input name="cod_a" type="text"></td>
                </tr>
                <tr>
                  <td style="text-align: center;"><b> GRUPO </b></td>
                  <td style="text-align: center;"> <input name="cod_gr" type="text"></td>
                </tr>
              </tbody>
            </table>
          </center>
        </div>
       <?php
        //Obtener secciones
        $sql1 = "select * from seccion;";
        $stm1 = $conexion->query($sql1);
        // Ejecutamos
        while($row1 = $stm1->fetch())
        {
          echo "<div><section><div class='centrado'><h3>".$row1['tipo_seccion']."</h3></div>";
          //Obtener preguntas
          $sql2 = "select * from pregunta as p,seccion as s where p.id_seccion =".$row1["id_seccion"].";";
          $stm2 = $conexion->query($sql2);
          echo "<table class='docencia'>";
          while($row2 = $stm2->fetch())
          {
            echo "<tr>";
            if($row1['id_seccion'] == $row2['id_seccion'])
            {
              echo "<td>".$row2['pregTexto']."</td>";
              $sql3 = "select * from respuesta where id_pregunta in(".$row2["id_pregunta"].") and id_seccion in(".$row1["id_seccion"].")";
              $stm3 = $conexion->query($sql3);
              echo "<td>";
              if($row2["id_seccion"] > 1)
              {
                echo "<select name='p1'>";
              }
              while($row3 = $stm3->fetch())
              {
                $sec = $row2["id_seccion"];
                if($sec == 1)//En el primer caso utilizamos radio buttons
                {
                  echo "<input name='".$row3["texto"]."' value='".$row3["texto"]."' type='radio'>".$row3["texto"];
                }
                else if($sec > 1)
                {
                  echo "<option value='".$row3["texto"]."'>".$row3["texto"]."</option>";
                }
              }
              if($row2["id_seccion"] > 1)
              {
                echo "</select>";
              }
              echo "</td>";
            }
            echo "</tr>";
          }
          echo "</table></section></div>";
        }   
        ?>
    </form>
    
  </body>
</html>