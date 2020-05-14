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

		<?php 

			$busqueda = ($_REQUEST['Eliminar']);

			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE nombre LIKE '$busqueda'") or die("Algo salió mal");

			$columna = mysqli_fetch_array( $conseguido);

			$nombre = $columna["nombre"];
			$consola = $columna["consola"];
			$genero = $columna["genero"];
			$descripcion = $columna["descripcion"];

			$eliminar = mysqli_query($conexion, "DELETE from juegos where
			nombre='$nombre'
			") or die("Algo salió mal");
			
		?>

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

			</form>

		<article>
			
			<input type="submit" value="Prestados">
			<input type="submit" value="Nuevo">

		</article>		

	</aside>	

	<section class="main" id="main">

		<div class="titulo">

			<?php

				$columna = mysqli_fetch_array( $conseguido);

				echo "
				<label class='tit' >".$nombre." eliminado</label>
			";

			?>

		</div>		

			<label class="aviso">Base de datos actualizada</label>
	
	</section>

</body>

</html>