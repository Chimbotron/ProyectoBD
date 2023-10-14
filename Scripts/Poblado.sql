use hotel;

-- INSERT DE HABITACIONES
insert into habitaciones(id_habitacion, tipo_habitacion) values(1, "DIF. PREMIUM");
insert into habitaciones(id_habitacion, tipo_habitacion) values(2, "DIF. SIMPLE");
insert into habitaciones(id_habitacion, tipo_habitacion) values(3, "DIF. SUP. VIP. JAC.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(4, "DIF. SUP. VIP. TEM.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(5, "DIF. VIP");
insert into habitaciones(id_habitacion, tipo_habitacion) values(6, "PREMIUM 12 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(7, "PREMIUM 4 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(8, "SIMPLE 12 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(9, "SIMPLE 4 HRS");
insert into habitaciones(id_habitacion, tipo_habitacion) values(10, "SUP. VIP. JAC. 12 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(11, "SUP. VIP. JAC. 4 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(12, "SUP. VIP. TEM. 12 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(13, "SUP. VIP. TEM. 4 HRS");
insert into habitaciones(id_habitacion, tipo_habitacion) values(14, "VIP 12 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(15, "VIP 4 HRS.");
insert into habitaciones(id_habitacion, tipo_habitacion) values(16, "REC. RESERVA");
insert into habitaciones(id_habitacion, tipo_habitacion) values(17, "RESERVAS FESTIVOS");


-- INSERT DE TRAMOS HORARIOS
insert into tramo_horario(id_seccion, detalle_horario) values(1, "00:00 a 01:00");
insert into tramo_horario(id_seccion, detalle_horario) values(2, "01:00 a 02:00");
insert into tramo_horario(id_seccion, detalle_horario) values(3, "02:00 a 03.00");
insert into tramo_horario(id_seccion, detalle_horario) values(4, "03:00 a 04:00");
insert into tramo_horario(id_seccion, detalle_horario) values(5, "04:00 a 05:00");
insert into tramo_horario(id_seccion, detalle_horario) values(6, "05:00 a 06:00");
insert into tramo_horario(id_seccion, detalle_horario) values(7, "06:00 a 07:00");
insert into tramo_horario(id_seccion, detalle_horario) values(8, "07:00 a 08:00");
insert into tramo_horario(id_seccion, detalle_horario) values(9, "08:00 a 09:00");
insert into tramo_horario(id_seccion, detalle_horario) values(10, "09:00 a 10:00");
insert into tramo_horario(id_seccion, detalle_horario) values(11, "10:00 a 11:00");
insert into tramo_horario(id_seccion, detalle_horario) values(12, "11:00 a 12:00");
insert into tramo_horario(id_seccion, detalle_horario) values(13, "12:00 a 13:00");
insert into tramo_horario(id_seccion, detalle_horario) values(14, "13:00 a 14:00");
insert into tramo_horario(id_seccion, detalle_horario) values(15, "14:00 a 15:00");
insert into tramo_horario(id_seccion, detalle_horario) values(16, "15:00 a 16:00");
insert into tramo_horario(id_seccion, detalle_horario) values(17, "16:00 a 17:00");
insert into tramo_horario(id_seccion, detalle_horario) values(18, "17:00 a 18:00");
insert into tramo_horario(id_seccion, detalle_horario) values(19, "18:00 a 19:00");
insert into tramo_horario(id_seccion, detalle_horario) values(20, "19:00 a 20:00");
insert into tramo_horario(id_seccion, detalle_horario) values(21, "20:00 a 21:00");
insert into tramo_horario(id_seccion, detalle_horario) values(22, "21:00 a 22:00");
insert into tramo_horario(id_seccion, detalle_horario) values(23, "22:00 a 23:00");
insert into tramo_horario(id_seccion, detalle_horario) values(24, "23:00 a 00:00");

INSERT INTO orden (cantidad_orden, fecha, id_habitacion)
SELECT
  CAST(IFNULL(NULLIF(cantidad, ''), '0') AS SIGNED),  -- Convierte la columna 'cantidad' en un número entero, tratando los valores no numéricos como 0
  fecha,
  (SELECT id_habitacion FROM habitaciones WHERE id_habitacion = articulo)  -- Obtiene el id_habitacion correspondiente al tipo de habitación en 'articulo'
FROM Maestro;