CREATE DATABASE DreamHouse;

USE DreamHouse;
/*
  Tabla que almacela información de las sucursales de la empresa
*/
CREATE TABLE Sucursales
(
    codSucr char(4) primary key,
    direccion varchar(30) not null,
    cuidad Varchar(20) not null,
    codPost varchar(15) not null
)engine = innodb;

CREATE TABLE empleado
(
   numemp varchar(5) primary key,
   nombre varchar(20) not null,
   apellido varchar(20) not null,
   cargo varchar(15) not null,
   sexo enum ('F', 'M ') Not null,
   inicio date not null,
   salario decimal(6,2) not null,
   numdep  char(4),
   constraint FK_Empleado_Sucursal
   foreign key (numdep) references sucursal(codSucr)
   On Update Cascade On delete Cascade
)engine =innodb;

CREATE TABLE cliente
(
    codClie char(4) primary key,
    nombre varchar(15) not null,
    apellido varchar(15) not null,
    telefono varchar(12) not null,
    preferncia varchar(10) not null, 
    rentmax decimal(6,2) not null
)engine = innodb;

CREATE TABLE propiedad
(
   numprop char(4) primary key,
   calle    varchar(20) not null,
   cuidad   varchar(20) not null,
   codpost  varchar(10) not null,
   tipo 	varchar(20) not null,
   cuartos  int			not null,
   renta    decimal(6,2)not null,
   propiedatio char(4)	null,
   empleado	  char(5) null,
   sucursal	char(4) not null
)engine = innodb; 