CREATE USER docker;
CREATE DATABASE "CalendarioLaboral";
GRANT ALL PRIVILEGES ON DATABASE "CalendarioLaboral" TO docker;

--Cambiar la conexion
\c CalendarioLaboral

/* Crear tabla PAIS */
CREATE TABLE pais(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    codigo VARCHAR(10) NOT NULL
);

/* Crear indice para PAIS
   ordenado por NOMBRE */
CREATE UNIQUE INDEX ixPais
    ON pais(nombre);

/* Crear tabla TIPO_FESTIVO */
CREATE TABLE tipo_festivo(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    es_feriado BOOLEAN DEFAULT true
);

/* Crear indice para TIPO_FESTIVO
   ordenado por NOMBRE */
CREATE UNIQUE INDEX ixTipoFestivo
    ON tipo_festivo(nombre);

/* Crear tabla TIPO */
CREATE TABLE tipo(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    codigo VARCHAR(20)
);

/* Crear indice para TIPO
   ordenado por NOMBRE */
CREATE UNIQUE INDEX ixTipo
    ON tipo(nombre);

/* Crear tabla CALENDARIO */
CREATE TABLE calendario(
    id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    es_laboral BOOLEAN DEFAULT true,
    descripcion VARCHAR(200)
);

/* Crear indice para CALENDARIO
   ordenado por FECHA */
CREATE UNIQUE INDEX ixCalendario
    ON calendario(fecha);