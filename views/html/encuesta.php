<!DOCTYPE HTML>
<html>
  <head>
  <!-- José Manuel Morales García -->  
	<link rel="stylesheet" href="views/html/estilos/encuesta.css">
 
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
      <section>
        <div style="text-align: center;"><b> INFORMACION PERSONAL Y ACADEMICA DE
            LOS ESTUDIANTES: </b></div>
        <br>
        <table class = 'docencia'>
          <tbody>
            <tr>
              <td>Veces que te has matriculado en esta asignatura</td>
              <td><input name="c3" value="1" 		type="radio"> 1 <input name="c3" value="2"
													type="radio"> 2 <input name="c3" value="3" 
													type="radio"> 3 <input name="c3" value="4" 
													type="radio"> &gt;3 </td>
            </tr>
            <tr>
              <td>Veces que te has examinado en esta asignatura </td>
              <td><input name="ex" value="1" 		type="radio"> 1 <input name="ex" value="2"
													type="radio"> 2 <input name="ex" value="3" 
													type="radio"> 3 <input name="ex" value="4" 
													type="radio"> &gt;3 </td>
            </tr>	
            <tr>
              <td>La asignatura me interesa</td>
              <td><input name="i" value="nada" 		type="radio"> Nada <input name="i" value="algo" 
													type="radio"> Algo <input name="i" value="bastante"
													type="radio"> Bastante <input name="i" value="mucho" 
													type="radio"> Mucho <br>
              </td>
            </tr>
            <tr>
              <td> Hago uso de las tutorias</td>
              <td><input name="tut" value="nada" 	type="radio"> Nada <input name="tut" value="algo" 
													type="radio"> Algo <input name="tut" value="bastante"
													type="radio"> Bastante <input name="tut" value="mucho" 
													type="radio"> Mucho </td>
            </tr>
            <tr>
              <td>Dificultad de esta asignatura</td>
              <td><input name="dif" value="baja" 	type="radio"> Baja <input name="dif" value="media" 
													type="radio"> Media <input name="dif" value="alta"
													type="radio"> Alta <input name="dif" value="muyalta" 
													type="radio"> Muy alta <br>
              </td>
            </tr>
            <tr>
              <td>Calificacion esperada</td>
              <td> <input name="cali" value="np" 	type="radio"> N.P. <input name="cali" value="sus" 
													type="radio"> Suspenso <input name="cali" value="apro"
													type="radio"> Aprobado <input name="cali" value="not" 
													type="radio"> Notable <input name="cali" value="sob" 
													type="radio"> Sobresaliente <input name="cali" value="mh" 
													type="radio"> Matricula Honor </td>
            </tr>
            <tr>
              <td>Asistencia a clase (% de horas lectivas)</td>
              <td> <input name="asis" value="50" 	type="radio"> Menos del 50% <input name="asis" value="65" 
													type="radio"> Entre 50% - 80% <input name="asis" value="80" 	
													type="radio"> Mas del 80% </td>
            </tr>
            <tr>
              <td>Edad</td>
              <td><input name="e" value="19" 		type="radio"> 19 <input name="e" value="21" 		
													type="radio"> 20-21 <input name="e" value="23"
													type="radio"> 22-23 <input name="e" value="24" 
													type="radio"> 24-25 <input name="e" value="25" 	
													type="radio"> &gt;25 <br>
              </td>
            </tr>
            <tr>
              <td>Sexo</td>
              <td><input name="sx" value="hombre" 	type="radio"> Hombre <input name="sx" value="mujer" 
													type="radio"> Mujer <br>
              </td>
            </tr>
            <tr>
              <td>Curso mas alto en el que estas matriculado</td>
              <td><input name="c1" value="1" 		type="radio"> 1 <input name="c1" value="2"
													type="radio"> 2 <input name="c1" value="3" 
													type="radio"> 3 <input name="c1" value="4" 
													type="radio"> 4 <input name="c1" value="5"
													type="radio"> 5 <input name="c1" value="6" 
													type="radio"> 6
              </td>
            </tr>
            <tr>
              <td>Curso mas bajo en el que estas matriculado</td>
              <td><input name="c2" value="1" 		type="radio"> 1 <input name="c2"  value="2" 
													type="radio"> 2 <input name="c2" value="3" 	
													type="radio"> 3 <input name="c2" value="4" 
													type="radio"> 4 <input name="c2" value="5" 
													type="radio"> 5 <input name="c2" value="6" 
													type="radio"> 6 
			  </td>
            </tr>
          </tbody>
        </table>
		<table class = 'docencia'>
		<tr>
		<td>
        <div> CODIGO PROFESOR<br>
		</td>
        <td>  
		
		<input name="cod_pr" type="text"><br>
		
        </td>
		</div>
		</section>
		
		<section id="preguntas">
		
		<tr>
		</table>
        <div>
         <div class='centrado'> <h3>PLANIFICACI&Oacute;N DE LA ENSE&Ntilde;ANZA Y APRENDIZAJE:</h3> </div>
		  
		  <table class = 'docencia'>
		  <tr>
		  <td>
          1. El/la profesor/a informa sobre los distintos aspectos de la gu&iacute;a docente o programa de la asignatura<br> (objetivos, actividades, contenidos del temario,
          metodolog&iacute;a, bibliograf&iacute;a, sistemas de evaluaci&oacute;n,...)
		  </td>
		  <td>
          <select name="p1">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td>
		</tr>
		</table>
		</div>
        <br>
        <br>
        <div> 
			<div class='centrado'><h3>DESARROLLO DE LA DOCENCIA:</h3></div>
		  <table class="docencia">
		  <tr>
		  <td>
          <div class='centrado'><h3>Cumplimiento de las obligaciones docentes(del encargo docente)</h3></tr> <br></div>
		  <td>
		  2. Imparte las clases en el horario fijado
          
		  <select name="p2">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td> </tr>
		  <td>
		  3. Asiste regularmente a clase
		  <select name="p3">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td>
		  </tr>
		  <td>
          4. Cumple adecuadamente con su labor de tutor&iacute;a
          <select name="p4">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td>
		  </tr>
		  <td>
          <div class='centrado'><h3>Cumplimiento de la planificaci&oacute;n</h3></div> </tr>
          <td>
		  5. Se ajusta a la planificaci&oacute;n de la asignatura
          <select name="p5">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td>
		  </tr>
		  
         <td> 6. Se han coordinado las actividades te&oacute;ricas y pr&aacute;cticas previstas
          <select name="p6">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td>
		  </tr>
		  
          <td> 7. Se ajusta a los sistemas de evaluaci&oacute;n especificados en la gu&iacute;a
          docente/programa de la asignatura
          <select name="p7">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td>
		  </tr>
		  
          <td>8. La bibliograf&iacute;a y otras fuentes de informaci&oacute;n recomendadas en el
          programa son &uacute;tiles para el aprendizaje de la asignatura
          <select name="p8">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td>
		  </tr>
          <td><div class='centrado'><h3><br>Metodolog&iacute;a docente</h3></div> </td></tr>
		  
          <td>9. El/la profesor/a organiza bien las actividades que se realizan en
          clase
          <select name="p9">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </td>
		  </tr>
		  </select>
          <td>
		  10. Utiliza recursos did&aacute;cticos (pizarra, transparencias, medios
          audiovisuales, material de apoyo en red virtual...) que facilitan el aprendizaje
          <select name="p10">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td>
		  </tr>
          <td><div class='centrado'><h3>Competencias docentes desarrolladas por el/la profesor/a</h3></div> </td> </tr> 
          <td>11. Explica con claridad y resalta los contenidos importantes
          <select name="p11">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td> </tr>
          
          <td>12. Se interesa por el grado de comprensi&oacute;n de sus explicaciones
          <select name="p12">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td></tr>
          
		  <td>
          13. Expone ejemplos en los que se ponen en pr&aacute;ctica los contenidos de
          la asignatura
          <select name="p13">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td>
		  </tr>
          
		  <td>
          14. Explica los contenidos con seguridad
          <select name="p14">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td>
		  </tr>
         
		  <td>
          15. Resuelve las dudas que se le plantean
          <select name="p15">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td></tr>
		 
		  <td>
          16. Fomenta un clima de trabajo y participaci&oacute;n
          <select name="p16">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td></tr>
		  
		  <td>
          17. Propicia una comunicaci&oacute;n fluida y espont&aacute;nea
          <select name="p17">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td></tr>
		 
		  <td>
          18. Motiva a los/as estudiantes para que se interesen por la
          asignatura
          <select name="p18">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td></tr>
		  <td>
          19. Es respetuoso/a en el trato con los/las estudiantes
          <select name="p19">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td></tr>
		  
          <td><div class='centrado'><h3>Sistemas de evaluaci&oacute;n</h3></div> </td></tr>
		  <td>
		  20. Tengo claro lo que se me va a exigir para superar esta asignatura
          <select name="p20">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td></tr>
		  <td>
          21. Los criterios y sistemas de evaluaci&oacute;n me parecen adecuados, en
          el contexto de la asignatura
          <select name="p21">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td></tr>
		</table>
        </div>
		<br>
		<br>
        </tr>
        <td><div class='centrado'><h2> RESULTADOS:</h2></td></div>
          <br>
		  <table class='docencia'>
		  <tr>
		  <td>
          22. Las actividades desarrolladas (te&oacute;ricas, pr&aacute;cticas, de trabajo
          individual, en grupo,...)<br>
          contribuyen a alcanzar los objetivos de la asignatura
          <select name="p22">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
          </td></tr>
		  <td>
          23. Estoy satisfecho/a con la labor docente de este/a profesor/a
          <select name="p23">
            <option value="NULL" checked=""> NS </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>
		  </td>
		  </tr>
		  </table>
        </div>

        <br>
        <input name="enviar" value="votar" type="SUBMIT">
        <table style="width: 371px; height: 155px;">
        </table>
      </section id="preguntas">
    </form>
    
  </body>
</html>