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

select * from orden;

create view VistaDiciembre21 
as
select
    COUNT(*) as NumeroDeOrdenes,
    habitaciones.tipo_habitacion as TipoDeHabitacion,
    tramo_horario.detalle_horario as TramoHorario
from orden
join habitaciones on orden.id_habitacion = habitaciones.id_habitacion
join tramo_horario on tramo_horario.id_seccion = tramo_horario.id_seccion 
where fecha >= '2021-12-01' and fecha <= '2021-12-31'
group by habitaciones.tipo_habitacion, tramo_horario.detalle_horario;

select * from vistadiciembre21;
call SP_ConsultarOrdenesPorFecha('2021-01-01', '2021-12-31');