create database dbEjemplo;

/*create-drop-alter*/

create table tbpersona(
cedula varchar(20) primary key,
nombre varchar(20) not null,
apellido1 varchar(20) not null,
apellido2 varchar(20) not null,
fechanac datetime not null,
estado bit not null,
telefono int,
/*precio decimal(18,2)*/
/*constraint tbpersona_PK primary key(cedula, nombre)*/

);
/*alter table tbpersona add precio decinal (18,2)*/