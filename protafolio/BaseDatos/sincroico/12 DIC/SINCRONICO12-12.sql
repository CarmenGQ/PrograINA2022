create database dbsincronico12_dic

/*por defecto permite nulos*/
create table tbPersona (
cedula int primary key,
nombre varchar(20),
apellido1 varchar(20),
apellido2 nvarchar(20),
fechaNac datetime,
/*constraint pk_tbPersona primary key (cedula)*/


); /*seleccionar datos de la tabla*/
select * from tbPersona
/*elimina toda la tabla*/
drop table tbPersona
/*elimina todos los datos de la tabla*/
truncate table tbPersona
insert into tbPersona values (1,'walter', 'alpizar', 'arguello', '2022/12/12','')

/* modifico la tabla para agregar una columna nueva*/
alter table tbPersona add telefono int 
alter table tbPersona add telefono3 int
alter table tbPersona drop column telefono3
