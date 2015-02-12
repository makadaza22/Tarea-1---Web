<?php

						//-------CONECTANDO A BASE DE DATOS---------//

	include_once 'includes/connection_db.php'; //archivo de conexión


                       //-------REALIZANDO MI CONSULTA---------//

	$id_materia = $_POST['materia'];   
	$id_estudiante= $_POST ['usuario'];
	$selectJoin = "SELECT * FROM estudiantes
		INNER JOIN notas_estudiante 
				ON estudiantes.id_estudiante = notas_estudiante.id_estudiante
		INNER JOIN nota 
				ON nota.id_notas = notas_estudiante.id_notas 
		INNER JOIN materia 
				ON materia.id_materia = notas_estudiante.id_materia 
		WHERE materia.id_materia=$id_materia 
		AND estudiantes.id_estudiante=$id_estudiante";
	$resultQuery = mysqli_query($con,$selectJoin);
?>

	<table border="1">
		<tr>
			<td>Nombre Nota</td>
			<td>Nota</td>
			<td>Porcentaje nota</td>
			<td>Nota Final</td>
		</tr>

<?php
		$notaTotal=0;
		$nombre="";

		$nombre_materia="";
	while ($row = mysqli_fetch_array($resultQuery)) {
		$nombre=$row['nombre']." ".$row['apellidos'];
		$nombre_materia=$row['nombre_materia'];
			echo " <tr>
					<td>".$row['nombre_nota']."</td>
					<td>".$row['Calificacion']."</td>
					<td>".$row['porcentaje']."</td>
					<td>".$row['Calificacion']*$row['porcentaje']."</td></tr>";


		$notaTotal=$notaTotal+($row['porcentaje'] * $row['Calificacion']);
		}
?>
	</table>

<?php
	echo"<br>";
	echo"<br>";
	echo "Estudiante matriculado: ".$nombre;
	echo"<br>";
	echo $nombre_materia."_Promedio Actual:";
	echo " ".$notaTotal;
	echo "</br>";	
?>

