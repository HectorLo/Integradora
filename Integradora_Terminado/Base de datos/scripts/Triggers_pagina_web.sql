/*PROMOCION*/

CREATE TRIGGER tr_ins_promocion after INSERT ON promocion FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Promocion', 'Descripcion', '', NEW.Descripcion, current_user(), now(), 'Insert', NEW.IdPromocion), 
('Promocion', 'CodigoQR', '', NEW.CodigoQR, current_user(), now(), 'Insert', NEW.IdPromocion),
('Promocion', 'Descuento', '', NEW.Descuento, current_user(), now(), 'Insert', NEW.IdPromocion);

CREATE TRIGGER tr_up_promocion after UPDATE ON promocion FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Promocion', 'Descripcion', OLD.Descripcion, NEW.Descripcion, current_user(), now(), 'Update', OLD.IdPromocion), 
('Promocion', 'CodigoQR', OLD.CodigoQR, NEW.CodigoQR, current_user(), now(), 'Update', OLD.IdPromocion),
('Promocion', 'Descuento', OLD.Descuento, NEW.Descuento, current_user(), now(), 'Update', OLD.IdPromocion);

CREATE TRIGGER tr_del_promocion after DELETE ON promocion FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Promocion', 'Descripcion', OLD.Descripcion, '', current_user(), now(), 'Delete', OLD.IdPromocion), 
('Promocion', 'CodigoQR', OLD.CodigoQR, '', current_user(), now(), 'Delete', OLD.IdPromocion),
('Promocion', 'Descuento', OLD.Descuento, '', current_user(), now(), 'Delete', OLD.IdPromocion);

/*ESTADO*/

CREATE TRIGGER tr_ins_estado after INSERT ON estado FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Estado', 'Abreviatura', '', NEW.Abreviatura, current_user(), now(), 'Insert', NEW.IdEstado), 
('Estado', 'Nombre', '', NEW.Nombre, current_user(), now(), 'Insert', NEW.IdEstado),
('Estado', 'IdPais', '', NEW.IdPais, current_user(), now(), 'Insert', NEW.IdEstado);

CREATE TRIGGER tr_up_estado after UPDATE ON estado FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Estado', 'Abreviatura', OLD.Abreviatura, NEW.Abreviatura, current_user(), now(), 'Update', OLD.IdEstado), 
('Estado', 'Nombre', OLD.Nombre, NEW.Nombre, current_user(), now(), 'Update', OLD.IdEstado),
('Estado', 'IdPais', OLD.IdPais, NEW.IdPais, current_user(), now(), 'Update', OLD.IdEstado);

CREATE TRIGGER tr_del_estado after DELETE ON estado FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Estado', 'Abreviatura', OLD.Abreviatura, '', current_user(), now(), 'Delete', OLD.IdEstado), 
('Estado', 'Nombre', OLD.Nombre, '', current_user(), now(), 'Delete', OLD.IdEstado),
('Estado', 'IdPais', OLD.IdPais, '', current_user(), now(), 'Delete', OLD.IdEstado);

/*ETAPA*/

CREATE TRIGGER tr_ins_etapa after INSERT ON etapa FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Etapa', 'Luugar', '', NEW.Luugar, current_user(), now(), 'Insert', NEW.IdEtapa), 
('Etapa', 'IdRuta', '', NEW.IdRuta, current_user(), now(), 'Insert', NEW.IdEtapa);

CREATE TRIGGER tr_up_etapa after UPDATE ON etapa FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Etapa', 'Luugar', OLD.Luugar, NEW.Luugar, current_user(), now(), 'Update', OLD.IdEtapa), 
('Etapa', 'IdRuta', OLD.IdRuta, NEW.IdRuta, current_user(), now(), 'Update', OLD.IdEtapa);

CREATE TRIGGER tr_del_etapa after DELETE ON etapa FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Etapa', 'Luugar', OLD.Luugar, '', current_user(), now(), 'Delete', OLD.IdEtapa), 
('Etapa', 'IdRuta', OLD.IdRuta, '', current_user(), now(), 'Delete', OLD.IdEtapa);

/*PAIS*/

CREATE TRIGGER tr_ins_pais after INSERT ON pais FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Pais', 'Abreviatura', '', NEW.Abreviatura, current_user(), now(), 'Insert', NEW.IdPais), 
('Pais', 'Nombre', '', NEW.Nombre, current_user(), now(), 'Insert', NEW.IdPais);

CREATE TRIGGER tr_up_pais after UPDATE ON pais FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Pais', 'Abreviatura', OLD.Abreviatura, NEW.Abreviatura, current_user(), now(), 'Update', OLD.IdPais), 
('Pais', 'Nombre', OLD.Nombre, NEW.Nombre, current_user(), now(), 'Update', OLD.IdPais);

CREATE TRIGGER tr_del_pais after DELETE ON pais FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Pais', 'Abreviatura', OLD.Abreviatura, '', current_user(), now(), 'Delete', OLD.IdPais), 
('Pais', 'Nombre', OLD.Nombre, '', current_user(), now(), 'Delete', OLD.IdPais);

/*RUTA*/

CREATE TRIGGER tr_ins_ruta after INSERT ON ruta FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Ruta', 'Nombre', '', NEW.Nombre, current_user(), now(), 'Insert', NEW.IdRuta);

CREATE TRIGGER tr_up_ruta after UPDATE ON ruta FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Ruta', 'Nombre', OLD.Nombre, NEW.Nombre, current_user(), now(), 'Update', OLD.IdRuta);

CREATE TRIGGER tr_del_ruta after DELETE ON ruta FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Ruta', 'Nombre', OLD.Nombre, '', current_user(), now(), 'Delete', OLD.IdRuta);

/*USUARIO*/

CREATE TRIGGER tr_ins_usuario after INSERT ON usuario FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Usuario', 'Correo', '', NEW.Correo, current_user(), now(), 'Insert', NEW.Correo), 
('Usuario', 'Contrasena', '', NEW.Contrasena, current_user(), now(), 'Insert', NEW.Correo),
('Usuario', 'Nombre', '', NEW.Nombre, current_user(), now(), 'Insert', NEW.Correo),
('Usuario', 'Apellidos', '', NEW.Apellidos, current_user(), now(), 'Insert', NEW.Correo),
('Usuario', 'FechaNac', '', NEW.FechaNac, current_user(), now(), 'Insert', NEW.Correo),
('Usuario', 'IdPais', '', NEW.IdPais, current_user(), now(), 'Insert', NEW.Correo);

CREATE TRIGGER tr_up_usuario after UPDATE ON usuario FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Usuario', 'Correo', OLD.Correo, NEW.Correo, current_user(), now(), 'Update', OLD.Correo), 
('Usuario', 'Contrasena', OLD.Contrasena, NEW.Contrasena, current_user(), now(), 'Update', OLD.Correo),
('Usuario', 'Nombre', OLD.Nombre, NEW.Nombre, current_user(), now(), 'Update', OLD.Correo),
('Usuario', 'Apellidos', OLD.Apellidos, NEW.Apellidos, current_user(), now(), 'Update', OLD.Correo),
('Usuario', 'FechaNac', OLD.FechaNac, NEW.FechaNac, current_user(), now(), 'Update', OLD.Correo),
('Usuario', 'IdPais', OLD.IdPais, NEW.IdPais, current_user(), now(), 'Update', OLD.Correo);

CREATE TRIGGER tr_del_usuario after DELETE ON usuario FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Usuario', 'Correo', OLD.Correo, '', current_user(), now(), 'Delete', OLD.Correo), 
('Usuario', 'Contrasena', OLD.Contrasena, '', current_user(), now(), 'Delete', OLD.Correo),
('Usuario', 'Nombre', OLD.Nombre, '', current_user(), now(), 'Delete', OLD.Correo),
('Usuario', 'Apellidos', OLD.Apellidos, '', current_user(), now(), 'Delete', OLD.Correo),
('Usuario', 'FechaNac', OLD.FechaNac, '', current_user(), now(), 'Delete', OLD.Correo),
('Usuario', 'IdPais', OLD.IdPais, '', current_user(), now(), 'Delete', OLD.Correo);

/*VISITA*/

CREATE TRIGGER tr_ins_visita after INSERT ON visita FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Visita', 'Correo', '', NEW.Correo, current_user(), now(), 'Insert', NEW.IdVisita), 
('Visita', 'IdRuta', '', NEW.IdRuta, current_user(), now(), 'Insert', NEW.IdVisita),
('Visita', 'Fecha', '', NEW.Fecha, current_user(), now(), 'Insert', NEW.IdVisita),
('Visita', 'Costo', '', NEW.Costo, current_user(), now(), 'Insert', NEW.IdVisita),
('Visita', 'Descuento', '', NEW.Descuento, current_user(), now(), 'Insert', NEW.IdVisita);

CREATE TRIGGER tr_up_visita after UPDATE ON visita FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Visita', 'Correo', OLD.Correo, NEW.Correo, current_user(), now(), 'Update', OLD.IdVisita), 
('Visita', 'IdRuta', OLD.IdRuta, NEW.IdRuta, current_user(), now(), 'Update', OLD.IdVisita),
('Visita', 'Fecha', OLD.Fecha, NEW.Fecha, current_user(), now(), 'Update', OLD.IdVisita),
('Visita', 'Costo', OLD.Costo, NEW.Costo, current_user(), now(), 'Update', OLD.IdVisita),
('Visita', 'Descuento', OLD.Descuento, NEW.Descuento, current_user(), now(), 'Update', OLD.IdVisita);

CREATE TRIGGER tr_del_visita after DELETE ON visita FOR EACH ROW
INSERT INTO BITACORA (NOMBRETABLA, NOMBRECAMPO, VALORANTERIOR, VALORNUEVO, USUARIO, FECHA, ACCION, IDCAMPO)
VALUES ('Visita', 'Correo', OLD.Correo, '', current_user(), now(), 'Delete', OLD.IdVisita), 
('Visita', 'IdRuta', OLD.IdRuta, '', current_user(), now(), 'Delete', OLD.IdVisita),
('Visita', 'Fecha', OLD.Fecha, '', current_user(), now(), 'Delete', OLD.IdVisita),
('Visita', 'Costo', OLD.Costo, '', current_user(), now(), 'Delete', OLD.IdVisita),
('Visita', 'Descuento', OLD.Descuento, '', current_user(), now(), 'Delete', OLD.IdVisita);
