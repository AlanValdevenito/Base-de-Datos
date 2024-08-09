-- Para cada carrera devuelva su nombre y la cantidad de 
-- alumnos inscriptos. Incluya las carreras sin alumnos.

SELECT c.nombre, COUNT(DISTINCT ie.padron) AS cantidad_inscriptos
FROM carreras c
LEFT JOIN inscripto_en ie ON c.codigo = ie.codigo
GROUP BY c.codigo;

-- Como nos piden incluir las carreras
-- sin alumnos, debemos utilizar un
-- left join ya que nos interesa quedarnos
-- con todas las carreras que existan en la
-- base de datos.