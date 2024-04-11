-- Para cada 10 registrado, devuelva el padron y nombre 
-- del alumno y el nombre de la materia correspondientes 
-- a dicha nota

SELECT a.padron, a.nombre || ' ' || a.apellido AS nombre, m.nombre AS materia
FROM (notas n INNER JOIN alumnos a ON (n.padron = a.padron)) 
INNER JOIN materias m ON (n.codigo = m.codigo AND n.numero = m.numero)
WHERE n.nota = 10;