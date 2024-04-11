-- Listar para cada carrera su nombre y el padron de los 
-- alumnos que esten anotados en ella. Incluir tambien 
-- las carreras sin alumnos inscriptos.

SELECT c.nombre, a.padron
FROM (alumnos a INNER JOIN inscripto_en ie
ON (a.padron = ie.padron))
RIGHT JOIN carreras c ON (c.codigo = ie.codigo);

-- Como nos piden incluir tambien las carreras
-- sin alumnos inscriptos, debemos utilizar
-- un right join ya que nos interesa quedarnos
-- con todas las carreras que existan en la
-- base de datos.