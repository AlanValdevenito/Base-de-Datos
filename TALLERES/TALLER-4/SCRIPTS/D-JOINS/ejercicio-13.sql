-- Devolver para cada materia su nombre y el nombre del 
-- departamento.

SELECT m.nombre AS materia, d.nombre AS departamento
FROM materias m INNER JOIN departamentos d ON (m.codigo = d.codigo);