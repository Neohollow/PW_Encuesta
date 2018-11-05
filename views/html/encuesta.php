<?php
 /**
  * @author José Joaquín Pérez-Calderón Ortiz
  * @version 1.0
  */
 define('USER','root');//Cambiar usuario
 define('PASS','');//Cambiar la pass

 require __DIR__.'./../../Clases/conexion.php';
 require __DIR__.'/logout/logout.php';//llamada implicita a check to close
 $dsn = 'mysql:dbname=encuesta;host=127.0.0.1;';
 $datos = $_SESSION["datos_sesion"];//Datos de sesión
 //Creamos la conexión

 $conexion = new PDOp($dsn,USER,PASS);//Creamos la conexión
 $conexion->query("SET NAMES 'utf8'");

 checkTocloseSession();

 if(isset($_POST["enviar"]))
 {
 	
 	$cod_tit = $_POST["cod_tit"];
 	$cod_a = $_POST["cod_a"];
 	$cod_gr = $_POST["cod_gr"];

 	$vector = array();
 	for ($i=0; $i < 34; $i++) { 
 	 array_push($vector, $_POST[$i]);
 	}



  $sqlinsercion = "insert into resest(id_pregunta,id_usuario,texto,id_asig)";

  for ($i=0; $i < count($vector)-1; $i++) 
  { 
    if($i==0)
     $sqlinsercion .= "values(".($i+1).",".$datos[1].",'".$vector[$i]."',".$cod_a."),";
    else
    {
      $sqlinsercion .= "(".($i+1).",".$datos[1].",'".$vector[$i]."',".$cod_a."),"; 
    }
  }  
  $sqlinsercion .="(".count($vector).",".$datos[1].",'".$vector[count($vector)-1]."',".$cod_a.");";
  
  try{
      $conexion->prepare($sqlinsercion)->execute($data);
      //Una vez relizada la encuesta se lanza mensaje y redireccion a login
  }
  catch(Exception $e)
  {
    //mensaje en caso de error
    die('Error: '.$e->GetMessage());
  }

 	/*
   * Aquí procedemos a eliminar la sesión del usuario y redirigimos
   */
 	unset($_SESSION["datos_sesion"]);
  header(rtrim("Location: /".rtrim(PROJECT_ROOT)."/"));
  /*
   * El usuario es redirigido a la pantalla de login,
   * este usuario no volverá a realizar la encuesta
   */


 }
?>

<!DOCTYPE HTML>
<html>
  <head>
  <!-- José Manuel Morales García -->  
	<link rel="stylesheet" href="views/html/estilos/encuesta.css">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Encuesta-Ucaplus</title>
  <link rel="shortcut icon" type="image/x-icon" href="../<?php echo rtrim(PROJECT_ROOT); ?>/views/recursos/Icono.ico" />
  </head>
  <body>
    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
    <title> Encuesta </title>

    <form action="" method="post">
        <div>
          <center><b>CODIGO DE LA ASIGNATURA<br>
              <br>
            </b></center>
          <center>
            <table style="width: 371px; height: 155px;">
              <tbody>
                <tr>
                  <td style="text-align: center;"><b>TITULACION</b></td>
                  <td style="text-align: center;"><input name="cod_tit" type="text" rquired></td>
                </tr>
                <tr>
                  <td style="text-align: center;"><b> ASIGNATURA</b></td>
                  <td style="text-align: center;"><input name="cod_a" type="text" required></td>
                </tr>
                <tr>
                  <td style="text-align: center;"><b> GRUPO </b></td>
                  <td style="text-align: center;"> <input name="cod_gr" type="text" required></td>
                </tr>
              </tbody>
            </table>
          </center>
        </div>
       <?php
        //Obtener secciones
        $sql1 = "select * from seccion;";
        $stm1 = $conexion->query($sql1);

        $cont_name=0;//Contador a 0 de los nombres a utilizar
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
                echo "<select name='".$cont_name."'>";
                $cont_name++;//Modifica el id por 
              }
              while($row3 = $stm3->fetch())
              {
                $sec = $row2["id_seccion"];
                if($sec == 1)//En el primer caso utilizamos radio buttons
                {
                  echo "<input name='".$cont_name."' value='".$row3["texto"]."' type='radio'>".$row3["texto"];
                }
                else if($sec > 1)
                {
                  echo "<option value='".$row3["texto"]."'>".$row3["texto"]."</option>";
                }
              }
              if($row2["id_seccion"] == 1)
              {
              	$cont_name++;//Para mantener el name id no modificamos hasta el final
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
        <input type="submit" name="enviar" id="env"/>
    </form>
    
  </body>
</html>