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

			$busqueda = strtolower($_REQUEST['accionprestamo']);
			$nombre = ($_REQUEST['nombre']);
			$accion = strtolower($_REQUEST['accionprestamo']);

			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE nombre LIKE '$nombre'") or die("Algo salió mal");

			echo "Nombre: ".$nombre;
			echo "Accion: ".$accion;

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

				<input type="submit" value="Prestados" style="margin-top: 10px;">

			</form>			

			<form method="get" action="nuevo.php" class="simple" style="margin: 0px; padding: 0px;">
				<input type="submit" value="Nuevo">
			</form>

		</article>		

	</aside>	

	<section class="main" id="main">

		<div class="titulo">

			<?php

			$columna = mysqli_fetch_array( $conseguido);

			echo "
				<label class='tit' >".$columna["nombre"]."</label>
			"; 

			

			?>

		</div>

		<form class="formeditar" method="get" action="actualizar.php">

		<?php

		if($columna["estado"]==0){
			$est="Libre";
			$tipo="hidden";
			$activado="selected";
			$desactivado="";
			$persona="";
		}
		else{
			$est="Prestado";
			$tipo="text";
			$activado="";
			$desactivado="selected";
			$persona="Persona:";
		}
		$nomaux = $columna["nombre"];

		echo "

			<input value='".$nomaux."' type='hidden' name='nombreoriginal'>
			<label class='indicador'>Nombre:<input class='valorind' value='".$columna["nombre"]."' type='text' name='nombre'></label>
			<label class='indicador'>Consola:<input class='valorind' value='".$columna["consola"]."' type='text' name='consola'></label>
			<label class='indicador'>Genero:<input class='valorind' value='".$columna["genero"]."' type='text' name='genero'></label>
			<label>".$persona."<input class='valorind' value='".$columna["persona"]."' type='".$tipo."' name='persona'></label>
			<label class='indicador'>Descripción:<textarea class='valorind' value='".$columna["descripcion"]."' type='text' name='descripcion'>".$columna["descripcion"]."</textarea></label>
			<label class='indicador'>Portada:<input class='valorind' value='".$columna["portada"]."' type='text' name='portada'></label>

			";

		?>

			<input class="botac" type="submit" name="enviar" value="Actualizar">
			
		</form>
	
	</section>

</body>

</html>