drop database mi_muebleria;
CREATE SCHEMA `mi_muebleria` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
use mi_muebleria;

create table usuarios(
nombre_usuario varchar(45) primary key Not null,
password_usuario varchar(45) not null,
tipo_usuario int not null
);

create table piezas(
tipo_pieza varchar(45) not null,
costo_pieza decimal not null
);

create table muebles(
nombre_mueble varchar(45) primary key not null,
precio_mueble decimal not null
);

create table ensamble_piezas(
mueble_pieza_ensable varchar(45) not null,
piezas_ensable varchar(45) not null,
cantidad_piezas_ensamble int not null
);

create table ensamble_mueble(
mueble_ensamble varchar(45) not null,
usuario_mueble_ensamble varchar(45) not null,
fecha_mueble_ensamble date not null
);

create table cliente(
nombre_cliente varchar(45) not null,
nit_clicliente varchar(45) primary key not null,
direccion_cliente varchar(45) not null,
municipio_cliente varchar(45),
local_municipio_cliente varchar(45),
departamento_cliente varchar(45)
);