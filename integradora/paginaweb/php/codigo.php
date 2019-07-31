<?php
	$servidor = 'localhost';
	$login = 'root';
	$password = '';
	$database = 'pagina_web';
	$charset = 'UTF8';
	$port = 3306;
	
	try{
		$conexion = new PDO('mysql:host='.$servidor.';dbname='.$database.';charset='.$charset.';port='.$port, $login, $password);
	}
	
	catch(PDOException $error){
		echo $error->POSTCode().' '.$error->POSTMessage();
	}
	
		if (isset($_POST['correo'])) {
		$consulta = "SELECT correo FROM usuario WHERE correo='".$_POST['correo']."'";
		$resultado = $conexion->query($consulta);
		
		
		while($registro = $resultado->fetch()){
			$login_valido = $registro['correo'];
		}
		
		$consulta = "SELECT IdPromocion FROM Promocion WHERE CodigoQR='".$_POST['CodigoQR']."'";
		$promocion = $conexion->query($consulta);
		$codigo = $promocion->fetch();

			if (isset($_POST['CodigoQR'])) {
				$consulta = "SELECT Descripcion FROM Promocion WHERE CodigoQR='".$_POST['CodigoQR']."'";
				$resultado = $conexion->query($consulta);
				
				
				
				while($registro = $resultado->fetch()) {
					$consulta = "INSERT INTO usuario_promocion(Correo,Fecha, Estatus, IdPromocion) VALUES('$login_valido', '".date('Ymd')."', 0, ".$codigo['IdPromocion'].")";
					$conexion->exec($consulta);
?>	
					<html>
						<head>
							<title>Calvillo York </title>
							<meta Charset="utf-8" />	
							<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
							<link rel="stylesheet" type="text/css" href="../Inicio.css">
						</head>
							<body>
								<header> 
									<nav id="navegador">			 
										<ul class="uli">	
											<li class="list" ><b id="nombre"><big>Calvillo York</big></b></li>
											<li class="list" ><a href="../inicio2.html">Inicio</a></li><!--logo-->						
											<li class="list" ><a href="../Ruta2.html">Ruta</a></li>
											<li class="list" ><a href="../Promocion.html">Promocion</a></li>
											<li class="list" ><a href="../simpaginaqr.html">QR</a></li>
											<li class="list" ><a href="cerrar.php">Cerrar sesion</a></li>

										</ul>
									</nav>
									<div class="ciel">
										<img src="../imagenes/codigo.jpg" id="cielo"/>
									</div>
								</header>
								<section class="sectionD">
									<h1>Promoci&oacute;n</h1>
										<p>
													<?php echo "Su promocion es: " . $registro['Descripcion'] . "<br>"; ?>
										</p>
								</section>
								<footer class="section2">
									<div class="footer">
										<img class="iconos" src="../imagenes/icono1.png" />
										<img class="iconos" src="../imagenes/icono2.png" />
										<img class="iconos" src="../imagenes/icono3.png" />
										<b class="iconos"><big>lasmejoresrutas@gmail.com</big></b> 
										<b class="iconos"><big>Tel&eacute;fono: 4491231212</big></b>
										<b class="iconos"><big>Direcci&oacute;n: UTCalvillo</big></b>
									</div>
								</footer>
							</body>
						</html>
<?php
			}
		}
	}
	else {
		echo 'El c&oacute;digo no es valido';
	}
?>