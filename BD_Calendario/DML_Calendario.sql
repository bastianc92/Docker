--Cambiar la conexion
\c CalendarioLaboral

/* Insertar datos en tabla PAIS */
INSERT INTO pais(nombre, codigo) VALUES
('Colombia', 'CO'),
('Estados Unidos', 'US'),
('Mexico', 'MX');

/* Insertar datos en tabla TIPO_FESTIVO */
INSERT INTO tipo_festivo(nombre, descripcion, es_feriado) VALUES
('Fijo', 'Festivo de fecha fija', true),
('Puente', 'Festivo trasladado al lunes', true),
('Pascua', 'Festivo relativo a pascua', true);

/* Insertar datos en tabla TIPO */
INSERT INTO tipo(nombre, descripcion, codigo) VALUES
('Laboral', 'Dia laboral normal', 'LAB'),
('No Laboral', 'Dia no laboral o festivo', 'NOLAB');