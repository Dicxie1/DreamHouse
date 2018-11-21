CREATE DATABASE DreamHouse;

USE DreamHouse;
/*
  Tabla que almacela información de las sucursales de la empresa
*/
CREATE TABLE Sucursales
(
    codSucr Int Not null,
    direccion varchar(30) not null
)engine = innodb;