-- Obtener el promedio de notas de las materias del 
-- departamento de codigo 75.

SELECT AVG(n.nota) AS promedio
FROM notas n
WHERE n.codigo = '75';