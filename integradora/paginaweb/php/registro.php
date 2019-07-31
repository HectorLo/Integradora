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
	
	
	$username = $_POST['correo'];
	$pass = $_POST['contrasena'];
	$nombre = $_POST['nombre'];
	$apellidos = $_POST['apellido'];
	$fechaNac = $_POST['fechaNac'];
	$pais = $_POST['pais'];
	
	
	$consulta = "INSERT INTO usuario(Correo, Contrasena, Nombre, Apellidos, FechaNac) VALUES ('$username','$pass','$nombre','$apellidos','$fechaNac')";
	
	$conexion->exec($consulta);
	
	header('Location: ../Inicio_de_sesion.html');
?>