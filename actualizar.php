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

			$busqueda = ($_REQUEST['nombreoriginal']);			

			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE nombre LIKE '$busqueda'") or die("Algo salió mal");

			$nombreoriginal = ($_REQUEST['nombreoriginal']);
			$nombre = ($_REQUEST['nombre']);
			$consola = ($_REQUEST['consola']);
			$genero = ($_REQUEST['genero']);	
			$estado = ($_REQUEST['estado']);	
			$persona = ($_REQUEST['persona']);
			$descripcion = ($_REQUEST['descripcion']);
			$portada = ($_REQUEST['portada']);

			$actualizar = mysqli_query($conexion, "UPDATE juegos SET 
			nombre='$nombre',
			consola='$consola',
			genero='$genero',
			estado=$estado,
			persona='$persona',
			descripcion='$descripcion',
			portada='$portada' 
			WHERE nombre LIKE '$nombreoriginal'") or die("Algo salió mal");
			
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

				<input class="fin" type="submit" value="Prestados" style="margin-top: 10px;"  name="prestados">

			</form>			

			<form method="get" action="nuevo.php" class="simple2" style="" accept-charset="UTF-8">
				<input type="submit" value="Nuevo">
			</form>

		</article>		

	</aside>	

	<section class="main" id="main">

		<div class="titulo">

			<?php

				$columna = mysqli_fetch_array( $conseguido);

				echo "
				<label class='tit' >".$nombre."</label>
			";

			?>

		</div>

		<?php

		echo "
		<div class='actualizados'>
			<label class='indicador'>Nombre:<label class='valorind'>".$nombre."</label></label>
			<label class='indicador'>Consola:<label class='valorind'>".$consola."</label></label>
			<label class='indicador'>Genero:<label class='valorind'>".$genero."</label></label>
			<label class='indicador'>Descripción:<label class='valorind'>".$descripcion."</label></label></label>
		</div>
		";
		?>

			<label class="aviso">Base de datos actualizada</label>
	
	</section>

</body>

</html>