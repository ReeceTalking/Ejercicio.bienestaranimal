create database nuevobienestar
use nuevobienestar
create table usuario(
idusuario int primary key,
nombre varchar (50),
apellido varchar (50),
direccion varchar (50),
correoelectronico varchar (100),
tipousuario varchar (30)
)

create table animal(
idanimal int primary key,
especie varchar (30),
raza varchar (50),
edadestimada int,
sexo varchar (10),
condicinactual varchar (30),
ubicaionactual varchar (100),
estado_adopcion varchar (10),
)
create table reportes (
idreporte int primary key,
idusuario int,
idanimal int, 
descripcion varchar (200),
fecha date,
constraint fk_idusuarios foreign key (idusuario) references usuario (idusuario),
constraint fk_idanimal foreign key (idanimal) references animal (idanimal)
)
