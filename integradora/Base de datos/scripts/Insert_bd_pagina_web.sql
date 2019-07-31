INSERT INTO pais (abreviatura,Nombre) VALUES
	('Mex', 'México'),
	('EUA', 'Estados Unidos'),
	('Col', 'Colombia'),
	('Brs', 'Brasil'),
	('Can', 'Canada'),
	('Cub', 'Cuba');
    
INSERT INTO Estado (Abreviatura, Nombre, IdPais) 
VALUES ('Ags', 'Aguascalientes',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais) 
VALUES ('BC','Baja California',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
 VALUES ('BCS', 'Baja California Sur ',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
 VALUES ('Camp ', 'Campeche ',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Coah ', 'Coahuila ',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Col ', 'Colima' , 1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Chis' , 'Chiapas' ,1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Chih', ' Chihuahua ',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('CDMX', 'Ciudad de México',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Dgo', 'Durango',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Gto' , 'Guanajuato',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Gro', 'Guerrero',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Hgo', 'Hidalgo',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Jal', 'Jalisco',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Mex', 'Estado de México',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Mich', 'Michoacán',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Mor', 'Morelos',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Nay ', 'Nayarit',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('NL' , 'Nuevo León',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Oax', 'Oaxaca',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Pue' , 'Puebla',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Qro', 'Querétaro',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Q.Roo', 'Quintana Roo',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('SLP', 'San Luis Potosí',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Sin', 'Sinaloa',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Son' , 'Sonora',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Tab', 'Tabasco',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Tamps', 'Tamaulipas',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Tlax' , 'Tlaxcala' ,1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Ver', 'Veracruz',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Yuc', 'Yucatán',1);
INSERT INTO Estado (Abreviatura, Nombre, IdPais)
VALUES ('Zac ', 'Zacatecas' ,1);

INSERT INTO Usuario (Correo,Contrasena,Nombre,Apellidos,FechaNac)
VALUES ('eduardosalas@gmail.com','eduardosalas','Eduardo','Salas Martinez','1998-10-22');
INSERT INTO Usuario (Correo,Contrasena,Nombre,Apellidos,FechaNac)
VALUES ('marcosalazar@gmail.com','marcosalazar','Marco','Salazar Medina','1980-06-01');
INSERT INTO Usuario (Correo,Contrasena,Nombre,Apellidos,FechaNac)
VALUES ('francogonzales@gmail.com','francogoonzales','Franco','Gonzales Rodriguez','1997-12-25');
INSERT INTO Usuario (Correo,Contrasena,Nombre,Apellidos,FechaNac)
VALUES ('anakaren@gmail.com','anakaren','Ana Karen','Martinez Martinez','1996-07-07');
INSERT INTO Usuario (Correo,Contrasena,Nombre,Apellidos,FechaNac)
VALUES ('mariaasusena@gmail.com','mariaasusena','Maria Asusena','Medina Medina','1980-01-03');

INSERT INTO Ruta (Nombre)
VALUES ('Ruta Local Calvi York');

INSERT INTO Etapa(luugar,IdRuta)
VALUES('El templo del señor del Salitre',1);
INSERT INTO Etapa(luugar,IdRuta)
VALUES('Nieves del Popo',1);
INSERT INTO Etapa(luugar,IdRuta)
VALUES('Casa del Artesano',1);
INSERT INTO Etapa(luugar,IdRuta)
VALUES('Restaurant Rosa Mexicano',1);
INSERT INTO Etapa(luugar,IdRuta)
VALUES('Cabañas Sierra Escondida',1);

INSERT INTO Visita(Correo,IdRuta,Fecha,Costo,Descuento)
VALUES('marcosalazar@gmail.com',1,'2019-08-02',250,50);
INSERT INTO Visita(Correo,IdRuta,Fecha,Costo,Descuento)
VALUES('eduardosalas@gmail.com',1,'2019-08-02',250,50);
INSERT INTO Visita(Correo,IdRuta,Fecha,Costo,Descuento)
VALUES('francogonzales@gmail.com',1,'2019-08-02',250,50);
INSERT INTO Visita(Correo,IdRuta,Fecha,Costo,Descuento)
VALUES('anakaren@gmail.com',1,'2019-08-02',250,50);
INSERT INTO Visita(Correo,IdRuta,Fecha,Costo,Descuento)
VALUES('mariaasusena@gmail.com',1,'2019-08-02',250,50);

INSERT INTO Promocion(Descripcion, CodigoQR, Descuento)
VALUES ('Obten un 30% de descuento en la tienda de articulos del Señor del Salitre. En articulos con precio mayor a $150 pesos.', '181304521', 50);
INSERT INTO Promocion(Descripcion, CodigoQR, Descuento)
VALUES ('Obten un 10% de descuento en las Nieves el popo, aplica en total de la compra realizada. Solo se puede registrar un codigo de descuento por compra.', '181304522', 10);
INSERT INTO Promocion(Descripcion, CodigoQR, Descuento)
VALUES ('Obten un 35% de descuento en la casa del artesano, aplica en compras totales mayores a $300 pesos.', '181304523', 35);
INSERT INTO Promocion(Descripcion, CodigoQR, Descuento)
VALUES ('En el restaurante Rosa Mexicano, En la compra de sus especiales obten el 50% de descuento. Más el postre del día al 80% de descuento.', '181304524', 50);
INSERT INTO Promocion(Descripcion, CodigoQR, Descuento)
VALUES ('Obten un 20% de descuento, si durante tu estadia en las cabañas encuentras el codigo, se te regresara el dinero del 20% a tu partida.', '181304525', 20);

