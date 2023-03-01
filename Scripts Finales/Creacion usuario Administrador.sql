-- Creación usuario administrador

/*CREATE LOGIN Administrador WITH PASSWORD = '123456'
MUST_CHANGE,
DEFAULT_DATABASE = master,
CHECK_EXPIRATION = ON; */

USE DBVacuna
CREATE USER Administrador FOR LOGIN Administrador
WITH DEFAULT_SCHEMA = dbo;

ALTER SERVER ROLE sysadmin ADD MEMBER Administrador;