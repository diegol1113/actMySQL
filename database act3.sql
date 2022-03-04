-- Mi script de mi base de datos --


create database metahapaxContacto; 
use metahapaxContacto;

create table tipoDeContacto(
idTipoDeContacto int unsigned not null auto_increment,
tipoDeContacto tinyint unsigned not null,
nombreEncargado varchar(50),
apellidoEncargado varchar(100),
mailDeContacto varchar(210),
primary key (idTipoDeContacto)
);


create table contacto(
idContacto int unsigned not null auto_increment,
fecheDeContacto date,
nombre varchar(50),
apellido varchar(100),
tipoDeContacto int unsigned not null,
institucion varchar(200),
telefono tinyint unsigned,
mailDeContacto varchar(210),
primary key (idContacto),
foreign key(tipoDeContacto) references tipoDeContacto(idTipoDeContacto)
);
