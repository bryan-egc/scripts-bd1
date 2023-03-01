-- Creación rol de Consulta

USE [DBVacuna]
GO
CREATE ROLE [Consulta]
GO
USE [DBVacuna]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [Consulta]
GO
