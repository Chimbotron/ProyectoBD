delimiter //
create procedure SP_OrdenesxHora (in hora varchar(20))
begin
select
    COUNT(*) as NumeroDeOrdenes,
    habitaciones.tipo_habitacion as TipoDeHabitacion,
    tramo_horario.detalle_horario as TramoHorario
from orden as o
join habitaciones on o.id_habitacion = habitaciones.id_habitacion
join tramo_horario on tramo_horario.id_seccion = tramo_horario.id_seccion 
where hora = tramo_horario.detalle_horario
group by habitaciones.tipo_habitacion, tramo_horario.detalle_horario
order by TramoHorario;
end //
delimiter ;

call SP_OrdenesxHora('00:00 a 01:00');