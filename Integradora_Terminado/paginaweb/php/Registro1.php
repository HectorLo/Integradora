<DOCTYPE HTML>
<html>
	<head>
		<title>Calvillo York </title>
		<meta Charset="utf-8" />	
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="../Inicio.css">
	</head>
	<script src="https://code.jquery.com/jquery-1.11.2.min.js" integrity="sha256-Ls0pXSlb7AYs7evhd+VLnWsZ/AqEHcXBeMZUycz/CcA=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function()
		{  
			// function to get all records from table
			function getAll(){

				$.ajax
				({
					url: 'getEst.php',
					data: 'action=showAll',
					cache: false,
					success: function(r)
					{
						$("#getEst").html(r);
					}
				});   
			}

			getAll();
			// function to get all records from table


			// code to get all records from table via select box
			$("#getPais").change(function()
			{    
				var id = $(this).find(":selected").val();

				var dataString = 'action='+ id;

				$.ajax
				({
					url: 'getEst.php',
					data: dataString,
					cache: false,
					success: function(r)
					{
						$("#getEst").html(r);
					} 
				});
			})
			// code to get all records from table via select box
		});
	</script>
	<body>
		<header> 
			<nav id="navegador">			 
				<ul class="uli">	
					<li class="list" ><b id="nombre"><big>Calvillo York</big></b></li>
					<li class="list" ><a href="../Inicio.html">Inicio</a></</li><!--logo-->						
					<li class="list" ><a href="../Ruta.html">Ruta</a></</li>
					<li class="list" ><a href="../Inicio_de_sesion.html">Inicio de sesi&oacute;n</a></</li>
					<li class="list" ><a href="Registro1.php">Registro</a></</li>
					<li class="list" ><a href="../AcercadeNosotros.html">Acerca de nosotros</a></</li>
				</ul>
			</nav>
			<div class="slider">
				<ul class="slider">
					<li> <img src="../imagenes/carrusel8.jpg" class="slider" height="85%" width="100%"/> </li>
					<li> <img src="../imagenes/carrusel7.jpg" class="slider" height="85%" width="100%"/> </li>
					<li> <img src="../imagenes/carrusel6.jpg" class="slider" height="85%" width="100%"/> </li>
					<li> <img src="../imagenes/carrusel9.jpg" class="slider" height="85%" width="100%"/> </li>
					<li> <img src="../imagenes/carrusel10.jpg" class="slider" height="85%" width="100%"/> </li>
				</ul>
			</div>
		</header>
		<section class="registroform">
			<h1 class="FormularioR" >Formulario de Registro</h1>
			<form method="POST" action="registro.php">
				<p>
					<label for="nombre">Nombre: </label>
					<input type="text" placeholder="Ingrese su nombre:" name="nombre" id="nombre" value="" /><br />
				</p>
				<p>
					<label for="apellido">Apellido: </label>
					<input type="text" placeholder="Ingrese su apellido:" name="apellido" id="apellido" value="" /><br />
				</p>
				<p>
					<label for="pais">Pa&iacute;s de origen: </label>
					<select class="option" id="getPais" name="pais">
						<option value="showAll" selected="selected">Pa&iacute;s de origen:</option>
						<?php
							require_once 'config.php';
							
							$stmt = $dbcon->prepare('SELECT * FROM pais');
							$stmt->execute();
							
							while($row=$stmt->fetch(PDO::FETCH_ASSOC))
							{
								extract($row);
								?>
								<option value="<?php echo $IdPais; ?>"><?php echo $Nombre; ?></option>
								<?php
							}
						?>
					</select>
				</p>
				<p>
					<label for="estado">Estado: </label>
					<select class="option" id="getEst" name="estado">
						
					</select>
				</p>
				<p>
					<label for="fechaNac">Fecha de nacimiento: </label>
					<input type="date" placeholder="Ingrese su fecha de nacimiento:" name="fechaNac" id="fechaNac" value="" /><br />
				</p>
				<p>
					<label for="correo">Correo electr&oacute;nico: </label>
					<input type="text" placeholder="Ingrese su correo electr&oacute;nico:" name="correo" id="correo" value="" /><br />
				</p>
				<p>
					<label for="contrasena">Contrase&ntilde;a: </label>
					<input type="password" placeholder="Ingrese su contrase&ntilde;a:" name="contrasena" id="contrasena" value="" /><br />
				</p>
				<p>
					<button name="registrarse">Registrarse</button>
				</p>
			</form>
		</section>
		<footer class="section2">
			<div class="footer">
				<img class="icono" src="../imagenes/logo.png"/> </li>
				<img class="iconos" src="../imagenes/icono1.png" />
				<img class="iconos" src="../imagenes/icono2.png" />
				<img class="iconos" src="../imagenes/icono3.png" />
				<b class="iconos"><big>lasmejoresrutas@gmail.com</big></b> 
				<b class="iconos"><big>Tel&eacute;fono:4491231212</big></b>
				<b class="iconos"><big>Direcci&oacute;n:UTCalvillo</big></b>
				<b class="icono"><big>Copyright © Break The Rules. 2019</big></b>
			</div>
		</footer>
	</body>
</html>