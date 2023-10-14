create database if not exists hotel
character set "utf8mb4";

use hotel;

create table habitaciones(

id_habitacion int  primary key,
tipo_habitacion varchar(25) 
);


create table tramo_horario(

id_seccion int  primary key,
detalle_horario varchar(20)
);

create table orden(

id_order int auto_increment primary key not null,
cantidad_orden integer,
id_seccion integer,
fecha date,
id_habitacion integer,
foreign key (id_habitacion) references habitaciones(id_habitacion),
foreign key (id_seccion) references tramo_horario(id_seccion)
);

create table Maestro(
tramo_horario int,
cantidad int,
articulo int,
fecha date
);

