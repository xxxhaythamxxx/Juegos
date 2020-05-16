<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

			error_reporting(E_ALL ^ E_NOTICE);

			$busqueda = strtolower($_REQUEST['nombre']);

			$busconsola = strtolower($_REQUEST['consola']);

			$busgenero = ($_REQUEST['genero']);

			$busprestados = strtolower($_REQUEST['prestados']);

			if(empty($busqueda) && empty($busconsola) && empty($busgenero) && empty($busprestados)){
				header("location: main.php");
			}
		
		if($busqueda){
			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE nombre LIKE '%$busqueda%'") or die("Algo salió mal");	

			$cant = mysqli_query($conexion, "SELECT COUNT(*) FROM `juegos` WHERE nombre LIKE '%$busqueda%'") or die("Algo salió mal");
		}
		if($busconsola){
			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE consola LIKE '$busconsola'") or die("Algo salió mal");

			$cant = mysqli_query($conexion, "SELECT COUNT(*) FROM `juegos` WHERE consola LIKE '%$busconsola%'") or die("Algo salió mal");
		}
		if($busgenero){
			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE genero LIKE '$busgenero'") or die("Algo salió mal");	

			$cant = mysqli_query($conexion, "SELECT COUNT(*) FROM `juegos` WHERE genero LIKE '%$busgenero%'") or die("Algo salió mal");
		}
		if($busprestados){
			$conseguido = mysqli_query($conexion, "SELECT * FROM `juegos` WHERE estado = '1'") or die("Algo salió mal");

			$cant = mysqli_query($conexion, "SELECT COUNT(*) FROM `juegos` WHERE estado = '1'") or die("Algo salió mal");
		}

		$cantidad = mysqli_fetch_array($cant);

		?>

		<h1>Buscador</h1>
		
		<form method="get" action="buscar.php" accept-charset="UTF-8">
			
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

		<article class="cantidad">
			
			<label>Cantidad:</label><label><?php echo $cantidad[0]; ?></label>

		</article>

	</aside>

	<section class="main" id="main">	

	<?php	

	$estadoreal=array("Libre","Prestado");
	$accionprestamo=array("Prestar","Regresar");	

	while($columna = mysqli_fetch_array( $conseguido)){		

	if($columna["consola"]=="PSX")
		$tam=120;
	if($columna["consola"]=="PS2")
		$tam=174;
	if($columna["consola"]=="PS3")
		$tam=140;
	if($columna["consola"]=="Gamecube")
		$tam=174;
	if($columna["consola"]=="DS")
		$tam=120;
	if($columna["consola"]=="3DS")
		$tam=120;	
	if($columna["consola"]=="GBA")
		$tam=120;	

	echo "	

		<article class='parte' id='parte'>
			
			<div 
			class='imag' 
			style='background-image: url(iconos/".$columna["portada"].".jpg);
			height: ".$tam."px;'></div>

			<div class='contenedor'>
			
				<label class='tit' >".$columna["nombre"]."</label>
				<label class='descr' style='font-style: italic;'>".$columna["descripcion"]."</label>
				<label class='estad'>Estado:</label><label class='estado'>".$estadoreal[$columna["estado"]]."</label>";

				if($columna["estado"]==1){


				echo "<label class='pers'>Persona:</label><label class='persona'>".$columna["persona"]."</label>";

				}

				echo "

				<div class='crud'>
					<form method='get' action='accion.php' accept-charset='UTF-8'>
						<input type='hidden' name='nombre' value='".$columna["nombre"]."'>
						<input type='submit' value='".$accionprestamo[$columna["estado"]]."' name='accionprestamo'>
					</form>
					<form method='get' action='editar.php' accept-charset='UTF-8'>
						<input type='hidden' name='Editar' value='".$columna["nombre"]."' >
						<input type='submit' name='Editarcebo' value='Editar'>
					</form>
					<form method='get' action='eliminar.php' accept-charset='UTF-8'>
						<input type='hidden' name='Eliminar' value='".$columna["nombre"]."' >
						<input type='submit' name='Eliminarcebo' value='Eliminar'>
					</form>
				</div>

			</div>

		</article>

		";

		}
	?>	

	</section>

<script type="text/javascript" src="js/script.js"></script>
</body>


</html>