<!DOCTYPE html>
<?php
	session_start ();

	if (isset($_SESSION['correo']) && isset($_SESSION['contrasena'])) {
?>

<?php
	}
	else {
		echo 'Usuario no registrado';
	}
?>