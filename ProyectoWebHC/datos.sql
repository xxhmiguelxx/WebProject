-- SE ELIMINAR LA DB SI ESQUE YA EXISTE

/*
dbName: epiz_33746197_dbweb1
dbUser:epiz_33746197
dbPass:.PwDHLbyyEJQT/7
dbHost:sql313.epizy.com
dbPuerto:3306
*/



drop schema if exists `DBProject`;

-- creacion de la base de datos
create schema if not exists `DBProject` default character set utf8 collate utf8_sapanish_ci;

-- selecionamos la DB para trabajar sobre ella
USE `DBProject`;

-- Crear un tabla

CREATE TABLE `persona`(
`numero` int(5) not null,
`nombre` text not null,
`apellidos` text not null,
`edad` text not null,
`telefono` varchar (10) not null,
`email` text not null,
) engine=Innodb default charset=utf8;

alter table `persona`
change column `numero` `numero` int(10) not null auto_increment,
add primary key(`numero`);