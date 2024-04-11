-- Listar para cada carrera su nombre y el padron de 
-- los alumnos con padron mayor a 75000 que esten anotados 
-- en ella. Incluir tambien las carreras sin alumnos 
-- inscriptos con padron mayor a 75000.

SELECT c.nombre, a.padron
FROM alumnos a 
RIGHT JOIN inscripto_en ie ON (a.padron = ie.padron AND a.padron > 75000)
RIGHT JOIN carreras c ON (c.codigo = ie.codigo);

-- Como nos piden incluir tambien las carreras
-- sin alumnos inscriptos, debemos utilizar
-- un right join ya que nos interesa quedarnos
-- con todas las carreras que existan en la
-- base de datos.