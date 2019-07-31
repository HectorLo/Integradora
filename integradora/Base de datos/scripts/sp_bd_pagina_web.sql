CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertRuta`(in Nombre1 VARCHAR(255))
BEGIN
	INSERT INTO Ruta(Nombre) 
    VALUES(Nombre1);
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateRuta`(in IdRuta1 int, in Nombre1 varchar(255))
BEGIN
UPDATE Ruta SET Nombre=Nombre1
	WHERE IdRuta=IdRuta1;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteRuta`(in IdRuta1 int)
BEGIN
	DELETE FROM Ruta 
	WHERE IdRUta=IdRuta1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllRuta`()
BEGIN
SELECT * FROM Ruta;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdRuta`()
BEGIN
	SELECT * FROM Ruta 
	WHERE IdRuta=IdRuta1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertPromocion`(in Descripcion1 varchar(255), in CodigoQR1 varchar(777),
in Descuento1 int)
BEGIN
INSERT INTO Promocion 
	(Descripcion,CodigoQR,Descuento)
	VALUES
	(Descripcion1,CodigoQR1,Descuento1);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatePromocion`(in IdPromocion1 int, in Descripcion1 varchar(255),in CodigoQR1 varchar(777),
in Descuento1 int)
BEGIN
	UPDATE Promocion SET Descripcion=Descripcion1,
	CodigoQR=CodigoQR1,Descuento=Descuento1
	WHERE IdPromocion=IdPromocion1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeletePromocion`(in IdPromocion1 int)
BEGIN
	DELETE FROM Promocion 
	WHERE IdPromocion=IdPromocion1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllPromocion`()
BEGIN
	SELECT * FROM Promocion;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdPromo`(in IdPromocion1 int)
BEGIN
	SELECT * FROM Promocion WHERE IdPromocion=IdPromocion1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertPais`(in Abreviatura1 varchar(5),in Nombre1 varchar(255))
BEGIN
	INSERT INTO Pais
	(Abreviatura,Nombre)
	VALUES
	(Abreviatura1,Nombre1);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatePais`(in IdPais int, in Abreviatura varchar(5),in Nombre1 varchar(255))
BEGIN

	UPDATE Pais SET Abreviatura=Abreviatura1,Nombre=Nombre1
	WHERE IdPais=Id;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeletePais`(in IdPais int)
BEGIN
	DELETE FROM Pais 
	WHERE idPais=IdPais;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllPais`()
BEGIN
	SELECT * FROM Pais;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdPais`(in IdPais1 int)
BEGIN
	SELECT * FROM Pais 
	WHERE IdPais=IdPais1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertEstado`(in Abreviatura1 varchar(5), in Nombre1 varchar(255), in IdPais1 int)
BEGIN
	INSERT INTO Estado 
	(Abreviatura,Nombre,IdPais)
	VALUES
	(Abreviatura1,Nombre1,IdPais1);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateEstado`(in IdEstado1 int, in Abreviatura1 varchar(5), in Nombre1 varchar(255), in IdPais1 int)
BEGIN
	UPDATE Estado Set Abreviatura=Abreviatura1,Nombre=Nombre1,IdPais=IdPais1
	WHERE IdEstado=IdEstado1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteEstado`(in IdCliente1 int)
BEGIN
	DELETE FROM Estado 
	WHERE IdEstado=IdEstado1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllEstado`()
BEGIN
	SELECT * FROM Estado;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdEstado`(in IdEstado1 int)
BEGIN
	SELECT * FROM Estado 
	WHERE IdEstado=IdEstado1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateEtapa`(in IdEtapa1 int, in Lugar1 varchar(255), in IdRuta1 int)
BEGIN
	UPDATE Etapa SET Lugar=Lugar1,IdRuta=IdRuta1
	WHERE IdEtapa=IdEtapa1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteEtapa`(in IdEtapa1 int)
BEGIN
	DELETE FROM Etapa 
	WHERE IdEtapa=IdEtap;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllEtapa`()
BEGIN
	SELECT * FROM Etapa;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertEtapa`(in Lugar1 varchar(255), in IdRuta1 int)
BEGIN
	INSERT INTO Etapa 
	(Lugar,IdRuta)
	VALUES
	(Lugar1,IdRuta1);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdEtapa`(in IdEtapa1 int)
BEGIN
	SELECT * FROM Etapa 
	WHERE IdEtapa=IdEtapa1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertUsuario`(in Correo1 varchar(255), in Contrasena1 varchar(255), in Nombre1 varchar(255), in Apellidos1 varchar(255), in FechaNac1 date, in IdPais1 int)
BEGIN
	INSERT INTO Usuario
	(Correo,Contrasena,Nombre,Apellidos,FechaNac,IdPais)
	VALUES
	(Correo1,Contrasena1,Nombre1,Apellidos1,FechaNac1,IdPais1);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateUsuario`(in Correo1 varchar(255),in Contrasena1 varchar(255), in Nombre1 varchar(255), in Apellidos1 varchar(255),in FechaNac1 date, in IdPais int)
BEGIN
	UPDATE Usuario SET Contrasena=Contrasena1, Nombre=Nombre1, Apellidos=Apellidos1, FechaNac=FechaNac1, IdPais=IdPais1
	WHERE Correo=Correo1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteUsuario`(in Correo1 varchar(255))
BEGIN
	DELETE FROM Usuario 
	WHERE Correo=Correo1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllUsuario`()
BEGIN
	SELECT * FROM Usuario ;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdUsuario`(in Correo1 varchar(255))
BEGIN
	SELECT * FROM Usuario 
	WHERE Correo=Correo1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertVisita`(in Correo1 varchar(255), in IdRuta1 int, in Fecha1 date, in Costo1 int, in Descuento1 int)
BEGIN
	INSERT INTO Visita
	(Correo,IdRuta,Fecha,Costo,Descuento)
	VALUES
	(Correo1,IdRuta1,Fecha1,Costo1,Descuento1);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateVisita`(in IdVisita1 int, in Correo1 varchar(255), in IdRuta1 int, in Fecha1 date, in Costo1 int, in Descuento1 int)
BEGIN
	UPDATE Visita SET Correo=Correo1,Idruta=Idruta1,Fecha=Fecha1,Costo=Costo1,Descuento=Descuento1
	WHERE IdVisita=IdVisita1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteVista`(in IdVisita1 int)
BEGIN
	DELETE FROM Visita 
	WHERE IdVisita=IdVisita1;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectAllVisita`()
BEGIN
	SELECT * FROM Visita;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectByIdVisita`(in IdVista1 int)
BEGIN
	SELECT *FROM Visita
	WHERE IdVisita=IdVisita1;
END
