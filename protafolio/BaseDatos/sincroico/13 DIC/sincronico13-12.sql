create database dbPais
use dbPais;

create table tbProvincia (

id_provincia int identity (1,1) primary key,
nombre_provincia varchar(25) not null,


);
 insert into tbProvincia values ('san jose')
 insert into tbProvincia values ('alajuela')

create table tbCanton (

id_Canton int identity primary key,
id_provincia int,
nombre_Canton varchar(25),
constraint fk_tbCanton_tbProvincia_id_provincia_tipo foreign key(id_provincia) references tbProvincia(id_provincia)

);
create table tbDistrito (

id_Distrito int identity  primary key,
id_Canton int,
nombre_Distrito varchar (25) not null,
constraint fk_tbDistrito_tbCanton_id_Canton_tipo foreign key(id_Canton) references tbCanton(id_Canton)
);
create table tbBarrio (
id_Barrio int identity,
id_Distrito int,
nombreBarrio varchar(25) not null,
constraint pk_tbBarrio primary key (id_Barrio,id_Distrito),
constraint fk_tbBarrio_tbDistrito_id_Distrito_tipo foreign key(id_Distrito) references tbDistrito(id_Distrito)
);

select * from tbBarrio
select * from tbDistrito
select * from tbCanton
select * from tbProvincia
