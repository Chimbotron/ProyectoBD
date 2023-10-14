delimiter //
create procedure SP_NrordenesXfecha (in fecha1 date, in fecha2 date)
begin
select
    COUNT(*) as NumeroDeOrdenes,
    habitaciones.tipo_habitacion as TipoDeHabitacion,
    tramo_horario.detalle_horario as TramoHorario
from orden as o
join habitaciones on o.id_habitacion = habitaciones.id_habitacion
join tramo_horario on tramo_horario.id_seccion = tramo_horario.id_seccion 
where fecha = o.fecha and fecha between fecha1 and fecha2
group by habitaciones.tipo_habitacion, tramo_horario.detalle_horario
order by TramoHorario;
end //
delimiter ;

call nro_ordenes('2021-01-01', '2021-12-31');