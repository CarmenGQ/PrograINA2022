create database dbVehiculo

use dbVehiculo


create table tbVehiculo(
IdVehiculo int primary key,
idTipoVehiculo varchar(30) not null,
marca varchar(15) not null,
motor varchar(25) not null,
estado bit not null,

);
alter table tbVehiculo add constraint DF_tbVehiculo_estado 'true',for estado
select*from tbVehiculo

create table tipoVehiculo(
IdVehiculo int primary key,
tipo varchar(20) not null,
);
create table empresa(
IdEmpresa int primary key,
nombre varchar(20) not null,
telefono varchar(20),
direccion varchar(20) not null,

);
create table TipoAlquiler(
IdAlquiler int primary key,
tipo varchar(20) not null,
);
create table clientes(
IdClientes int primary key,
nombre varchar(20) not null,
apellido varchar(20) not null,
);
alter table clientes add constraint CHK_cliente_apellido check(apellido = null)
alter table  clientes add dirreccion varchar(40)not null
alter table clientes add constraint UQX_dirreccion_cliente unique (dirreccion)
create table usuario(
IdUsuario int primary key,
idPuesto varchar(20) not null,
nombre varchar(20)not null,
);

create table tipoPuesto(
IdPuesto int primary key,
tipo varchar(20) not null,
);
alter table tipoPuesto add constraint df_tipoPuesto_tipo default 'administrador' for tipo
create table TipoPago(
Idpago int primary key,
forma varchar(20) not null,
);
create table seguro(
idSeguro int primary key,
IdTipoSeguro varchar(20) not null,
);
create table tipoSeguro(
idSeguro int primary key,
tipo varchar(20) not null,

);
create table impuesto(
idImpuesto int primary key,
idTopoImpuesto varchar(30)not null,

);
create table tipoImpuesto(
idImpuesto int primary key,
IdVehiculo varchar(20) not null,
);
create table tbfactura(
IdAlquiler int primary key,
IdEmpresa varchar(20) not null,
IdCliente varchar(20) not null,
IdVehiculo varchar(20) not null,
IdPago varchar(20) not null,
IdPreciobase varchar(20) not null,
Idimpuesto varchar(20) not null,
idSeguro varchar(20)not null,
fecha datetime ,


);
drop table tbfactura

create table tbFactura(
IdAlquiler int primary key,
IdEmpresa int,
IdClientes int,
IdVehiculo int,
Idpago int,
idImpuesto int,
idSeguro int,


constraint fk_tbfactura_IdEmpresa_IdCliente_IdVehiculo_IdPago_Idimpuesto_idSeguro foreign key
);


 
alter table tbfactura add constraint df_tbfactura_fecha default 'dd/dd/dd' for fecha
alter table tbfactura add constraint CHK_tbfactura_fecha check(fecha=getdate())
select * from tbfactura