-- Creacion usuario UsrRegistro con rol de Registro

use DBVacuna

create user UsrRegistro for login UsrRegistro
alter role Registro add member UsrRegistro