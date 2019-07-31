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
	
	if (isset($_POST['correo']) && isset($_POST['contrasena'])) {
		$consulta = "SELECT correo, contrasena FROM usuario WHERE correo='".$_POST['correo']."' AND contrasena='".$_POST['contrasena']."'";
		$resultado = $conexion->query($consulta);
		
		while($registro = $resultado->fetch()){
			$login_valido = $registro['correo'];
			$pwd_valida = $registro['contrasena'];
		}

		if (isset($login_valido) && isset($pwd_valida)) {
			session_start ();

			$_SESSION['contrasena'] = $_POST['correo'];
			$_SESSION['contrasena'] = $_POST['contrasena'];

			header('Location: ../inicio2.html');
		}
		else {

			echo '<body onLoad="alert(\'Usuario desconocido\')">';

			echo '<meta http-equiv="refresh" content="0;URL=../Inicio.html">';
		}
	}
	else {
		echo 'Les variables du formulaire ne sont pas d&eacute;clar&eacute;es.';
	}
	
	
?>