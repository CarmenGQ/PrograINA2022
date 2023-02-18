create database dbPuntoVenta

use  dbPuntoVenta


create table tbCategoriaProducto (
codigo int primary key identity(1,1),
nommre varchar(50) not null,
estado bit not null,
);

create table tbProducto(

codigo int primary key,
nombre varchar(50) not null,
precio decimal(18,5) not null,
idcategoria int not null,
estado bit not null,
constraint fk_CategoriaProducto foreign key (idcategoria)references tbCategoriaProducto (codigo)


)
alter table tbProducto add descripcion varchar (500)
/*insert*/

insert into tbCategoriaProducto values ('libreria',1)
insert into tbCategoriaProducto values ('perfumeria',2)
insert into tbCategoriaProducto values ('jBisuteria',3)
insert into tbCategoriaProducto values ('zapateria',4)

select * from tbCategoriaProducto

insert into tbProducto values (1,'cuaderno 100 hojas',3000,1,1)
insert into tbProducto values (2,'cuaderno 500 hojas',500,1,1,null)

insert into tbProducto(codigo,precio,idcategoria,estado,nombre) values (3,500,1,1,'lapiz b1')
insert into tbProducto(codigo,precio,idcategoria,estado,nombre,descripcion) values (5,15000,1,1,'hallowen',(select nommre from tbCategoriaProducto where codigo =2))
insert into tbProducto(codigo,precio,idcategoria,estado,nombre,descripcion) values (6,5000,1,1,'argollas',(select nommre from tbCategoriaProducto where codigo =3))
insert into tbProducto(codigo,precio,idcategoria,estado,nombre,descripcion) values (7,5000,1,1,'sandalias',(select nommre from tbCategoriaProducto where codigo =4))


select * from tbProducto

select codigo,nombre, precio  from tbProducto

select codigo,nombre, precio
from tbProducto
order by nombre 

select codigo,nombre, precio
from tbProducto
order by nombre,precio desc

select codigo,nombre, precio
from tbProducto
where codigo=3 or codigo =6

select codigo,nombre, precio
from tbProducto
where codigo in (3,6,9) 


select codigo,nombre, precio
from tbProducto
where codigo between 2 and 4

select codigo,nombre, precio
from tbProducto
where codigo -1

/*principio*/
select codigo,nombre, precio
from tbProducto
where nombre like 'l%'
/*final*/
select codigo,nombre, precio
from tbProducto
where nombre like '%l%

insert into tbProducto(codigo,precio,idcategoria,estado,nombre,descripcion) values (4,1500,1,1,'libro ingles',(select nommre from tbCategoriaProducto where codigo =1))