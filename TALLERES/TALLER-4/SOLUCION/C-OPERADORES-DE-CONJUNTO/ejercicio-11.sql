-- Devolver los padrones de los alumnos que no registran 
-- nota en materias.

SELECT padron FROM alumnos
EXCEPT
SELECT padron FROM notas;