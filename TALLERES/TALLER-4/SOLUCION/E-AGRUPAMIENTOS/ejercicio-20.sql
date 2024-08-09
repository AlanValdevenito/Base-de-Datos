-- Para cada departamento, devuelva su codigo, nombre, la
-- cantidad de materias que tiene y la cantidad total de 
-- notas registradas en materias del departamento. Ordene
-- por la cantidad de materias descendente.

SELECT d.codigo, d.nombre, COUNT(DISTINCT m.numero) as cantidad_materias, COUNT(*)
FROM departamentos d
INNER JOIN materias m ON d.codigo = m.codigo
INNER JOIN notas n ON (m.codigo = n.codigo AND m.numero = n.numero)
GROUP BY d.codigo
ORDER BY cantidad_materias DESC;