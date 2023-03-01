-- Creacion Rol de Registro

USE [DBVacuna]
GO
CREATE ROLE [Registro]
GO
USE [DBVacuna]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datawriter] TO [Registro]
GO
