<!DOCTYPE html>
<?php
	session_start ();

	if (isset($_SESSION['correo']) && isset($_SESSION['contrasena'])) {
?>
<html lang="es">
	<head>
		<title>titulo de la pagina</title>
		<link rel="stylesheet" type="text/css" href="Inicio.css">
	</head>
	<body>
		<header> 
			<nav id="navegador">			 
				<ul class="uli">	
					<li class="list" ><b id="nombre"><big>Calvillo York</big></b></li>
					<li class="list" ><a href="php/Inicio.php">Inicio</a></</li><!--logo-->						
					<li class="list" ><a href="Ruta2.html">Ruta</a></</li>
					<li class="list" ><a href="Promocion.html">Promocion</a></</li>
					<a href="cerrar.php">Cerrar sesion</a>
				</ul>
			</nav>
			<div class="slider">
				<ul class="slider">
					<li class="lis" > <img src="imagenes/carrusel1.jpg" class="slider" height="85%" width="100%"/> </li>
					<li class="lis" > <img src="imagenes/carrusel2.jpeg" class="slider" height="85%" width="100%"/> </li>
					<li id="img3" class="lis" > <img src="imagenes/carrusel3.jpeg" class="slider" height="85%" width="100%"/> </li>
					<li class="lis" > <img src="imagenes/carrusel4.jpeg" class="slider" height="85%" width="100%"/> </li>
					<li class="lis" > <img src="imagenes/carrusel5.jpg" class="slider" height="85%" width="100%"/> </li>
				</ul>
				
			</div>
			
		</header>
		<section class="sectionI">
			<div>
				<h1 class="titulos"><big>Calvillo, Aguascalientes</big></h1><br />
				<p>Recibe su nombramiento como Pueblo M&aacute;gico en noviembre de 2012. Ubicado en el estado de Aguascalientes, lleva el nombre de Calvillo, en honor a su benefactor. Su origen se da con el establecimiento de una congregaci&oacute;n de indios nahuas de San Jos&eacute; de Huej&uacute;car, que significa “lugar de sauces”.</p><br />
				<p>M&aacute;s tarde, Don Jos&eacute; Calvillo, due&ntilde;o de la Hacienda San Nicol&aacute;s, hizo una donaci&oacute;n de tierra para la fundaci&oacute;n del pueblo. Este municipio se encuentra dentro de la provincia de la Sierra Madre Occidental.</p><br />
				<h2>Caracter&iacute;sticas:</h2><br />
				<p>Se incorpor&oacute; al programa Pueblos M&aacute;gicos en el a&ntilde;o 2012.</p><br />
				<p>Lleva el nombre de Calvillo, en honor a su benefactor. Su origen se da con el establecimiento de una congregaci&oacute;n de indios nahuas de San Jos&eacute; de Huej&uacute;car, que significa “lugar de sauces”. Este municipio se encuentra dentro de la provincia de la Sierra Madre Occidental.</p><br />
				<p>La magia de Calvillo sube al cielo en las plegarias al Se&ntilde;or del Salitre y es resguardada celosamente en la segunda c&uacute;pula m&aacute;s grande de Am&eacute;rica Latina. El para&iacute;so terrenal est&aacute; en las ca&iacute;das de agua de Los Alisos y Ci&eacute;nega. La historia sigue en las ex haciendas como La Labor y el Sauz; y en la Presa de Malpaso, las familias fortalecen su unidad en la sana convivencia.</p><br />
				<h2>Atractivos:</h2><br />
				<ul>
					<li>Templo del se&ntilde;or del salitre</li><br />
					<li>Nieves El Popo</li><br />
					<li>Casa del artesano</li><br />
					<li>Restaurante Rosa Mexicano</li><br />
					<li>Caba&ntilde;as Sierra Escondida</li><br />
				</ul>
				<h2>Festividades:</h2><br />
				<p>La fiesta patronal de “El Se&ntilde;or del Salitre” en mayo siendo el d&iacute;a principal el jueves de la Ascensi&oacute;n, que se celebra 40 d&iacute;as despu&eacute;s de cuaresma.</p><br />
				<p>La “Feria de la Guayaba” que se festeja los primeros quince d&iacute;as del mes de diciembre, siendo el d&iacute;a principal el 12 de Diciembre.</p><br />
				<p>Los primeros tres d&iacute;as de noviembre el Festival de D&iacute;a de Muertos.</p><br />
				<h2>Ubicaci&oacute;n:</h2><br />
				<p>Calvillo es un municipio del estado de Aguascalientes, ubicado en la parte sureste del territorio hidroc&aacute;lido.</p><br />
				<p>Se localiza a una distancia de 59 km de la ciudad capital del estado, la ciudad de Aguascalientes.</p><br />
				<iframe id="mapa2" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14812.840408507174!2d-102.72346021147823!3d21.849430135286102!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8429cc1aa651f151%3A0x6ef110b7a1b1637f!2sCalvillo%2C+Ags.!5e0!3m2!1ses!2smx!4v1563895521312!5m2!1ses!2smx" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		</section>
		<footer>
			<div>
				<img class="iconos" src="imagenes/icono1.png" />
				<img class="iconos" src="imagenes/icono2.png" />
				<img class="iconos" src="imagenes/icono3.png" />
				<b class="iconos"><big>lasmejoresrutas@gmail.com</big></b> 
				<b class="iconos"><big>Tel&eacute;fono: 4491231212</big></b>
				<b class="iconos"><big>Direcci&oacute;n: Universidad T&eacute;cnologica de Calvillo</big></b>
			</div>
		</footer>
	</body>

</html>
<?php
	}
	else {
		echo 'Usuario no registrado';
	}
?>