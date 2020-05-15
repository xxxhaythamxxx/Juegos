<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Principal</title>
	<link rel="stylesheet" type="text/css" href="css/estilos.css">	
</head>

<?php 
	include "conex.php";
 ?>

<header>

	<h2><a href="main.php">Base de datos para mantener el control de los videojuegos</a></h2>
	
</header>

<body>

	<aside>

		<h1>Buscador</h1>
		
		<form method="get" action="buscar.php">
			
			<label class="indicador">Título</label><input type="text" name="nombre" id="nombre" placeholder="Ingrese nombre">
			<input class="buscar" id="buscar" type="submit" value="Buscar" >					 

			    <label class="indicador">Consola:</label>			  

			    <select name="consola">

			    	<option></option>

			    	<?php 

			    	while ($columna = mysqli_fetch_array( $consolas ))
					{
				    	echo "<option>".$columna['consola']."</option>";						
				    }

			    	?>

			    </select>			 

			  <input type="submit" value="Consultar">			 

			    <label class="indicador">Género:</label>			  

			    <select name="genero">

			    	<option></option>

			    	<?php 

			    	while ($columna = mysqli_fetch_array( $generos ))
					{
				    	echo "<option>".$columna['genero']."</option>";						
				    }

			    	?>

			    </select>			 

			  <input type="submit" value="Consultar">

				<input class="fin" type="submit" value="Prestados" style="margin-top: 10px;"  name="prestados">

			</form>			

			<form method="get" action="nuevo.php" class="simple2" style="" accept-charset="UTF-8">
				<input type="submit" value="Nuevo">
			</form>

		</article>		

	</aside>	

	<section class="main" id="main">

		<div class="titulo">

			<label class='tit'>Ingresar nuevo juego</label>

		</div>

		<form class="formeditar" method="get" action="crear.php">

			<label class='indicador'>Nombre:<input class='valorind' value='' type='text' name='nombre'></label>
			<label class='indicador'>Consola:<input class='valorind' value='' type='text' name='consola'></label>
			<label class='indicador'>Genero:<input class='valorind' value='' type='text' name='genero'></label>
			<label class='indicador'>Estado:
			<select name="estado">
				<option>Libre</option>
				<option>Prestado</option>
			</select>
			</label>
			<label class='indicador'>Persona:<input class='valorind' value='' type='' name='persona'></label>
			<label class='indicador'>Descripción:<textarea class='valorind' value='' type='text' name='descripcion'></textarea></label>
			<label class='indicador'>Portada:<input class='valorind' value='' type='text' name='portada'></label>

			<input class="botac" type="submit" name="enviar" value="Ingresar">
			
		</form>
	
	</section>

</body>

</html>