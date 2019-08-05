create database pagina_web;
 
use pagina_web;

create table Ruta (
IdRuta int primary key not null auto_increment,
Nombre varchar(255));

create table Promocion(
IdPromocion int primary key not null auto_increment,
Descripcion varchar(255),
CodigoQR varchar(777),
Descuento int
);

create table Pais(
IdPais int primary key not null auto_increment,
Abreviatura varchar(5),
Nombre varchar(255)
);

create table Estado(
IdEstado int primary key not null auto_increment,
Abreviatura varchar(5),
Nombre varchar(255),
IdPais int,
foreign key fk_pais_estado  (IdPais) references Pais(IdPais)
ON UPDATE CASCADE ON DELETE RESTRICT
);

create table Etapa(
IdEtapa int primary key not null auto_increment,
Luugar varchar(255),
IdRuta int,
foreign key fk_ruta_etapa(IdRuta) references Ruta(IdRuta)
ON UPDATE CASCADE ON DELETE RESTRICT
);

create table Usuario(
Correo varchar(255) primary key not null,
Contrasena varchar(255),
Nombre varchar(255) not null,
Apellidos varchar (255) not null,
FechaNac date not null,
IdPais int,
foreign key fk_usuario_pais (IdPais) references Pais(IdPais)
ON UPDATE CASCADE ON DELETE RESTRICT
);

create table Usuario_Promocion (
Correo varchar(255),
Fecha date,
Estatus bit,
IdPromocion int,
primary key (IdPromocion,Correo),
foreign key fk_usupro_pro(IdPromocion) references Promocion (IdPromocion)
ON UPDATE CASCADE ON DELETE RESTRICT,
foreign key fk_correo_usua(Correo) references Usuario(Correo)
ON UPDATE CASCADE ON DELETE RESTRICT
);

create table Visita (
IdVisita int primary key not null auto_increment,
Correo varchar (255),
IdRuta int,
Fecha date,
Costo int, 
Descuento int,
foreign key fk_visita_ruta(IdRuta) references Ruta (IdRuta)
ON UPDATE CASCADE ON DELETE RESTRICT,
foreign key fk_visi_correo (Correo) references Usuario(Correo)
ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE BITACORA(
IDBITACORA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
NOMBRETABLA VARCHAR(100),
NOMBRECAMPO VARCHAR(100),
VALORANTERIOR VARCHAR(100),
VALORNUEVO VARCHAR(100),
USUARIO VARCHAR(50),
FECHA DATE,
ACCION VARCHAR(20),
IDCAMPO INT
);