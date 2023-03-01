--Usuario UsrLectura con rol Consulta

use DBVacuna
create user UsrLectura for login Lectura
ALTER ROLE Consulta ADD MEMBER UsrLectura