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
			$nombreoriginal = $nombre;
			/*$nombreoriginal = $nombre;*/

			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE nombre LIKE '$nombre'") or die("Algo salió mal");
/*
			echo "Nombre: ".$nombre;
			echo "Accion: ".$accion;
*/
			$columna = mysqli_fetch_array( $conseguido);
			
			$consola = ($columna['consola']);
			$genero = ($columna['genero']);
			$aux = strtolower($columna['estado']);
			if($aux=="libre")
				$estado=0;
			else
				$estado=1;
			$persona = ($columna['persona']);
			$descripcion = ($columna['descripcion']);
			$portada = ($columna['portada']);
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

			echo "
				<label class='tit' >".$nombre."</label>
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

		if($busqueda=='prestar'){

			echo "

			<label class='indicador'>Ingrese nombre de la persona: </label>
			<input type='text' name='persona' placeholder='Ingrese nombre'>
			<input type='hidden' name='estado' value=1>

			";

		}else{

			echo "

			<label class='indicador'>Se cambiará el estado del juego a Libre</label>
			<input type='hidden' name='persona' value=''>
			<input type='hidden' name='estado' value=0>

			";

		}

		echo "

			<input type='hidden' name='nombreoriginal' value='".$nombreoriginal."'>
			<input type='hidden' name='nombre' value='".$nombre."'>
			<input type='hidden' name='consola' value='".$consola."'>
			<input type='hidden' name='genero' value='".$genero."'>
			<input type='hidden' name='descripcion' value='".$descripcion."'>
			<input type='hidden' name='portada' value='".$portada."'>

		";		

		?>

			<input class="botac" type="submit" name="enviar" value="Actualizar">
			
		</form>
	
	</section>

</body>

</html>