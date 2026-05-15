FROM postgres:latest

ENV POSTGRES_DB=CalendarioLaboral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

COPY DDL_Calendario.sql /docker-entrypoint-initdb.d/
COPY DML_Calendario.sql /docker-entrypoint-initdb.d/