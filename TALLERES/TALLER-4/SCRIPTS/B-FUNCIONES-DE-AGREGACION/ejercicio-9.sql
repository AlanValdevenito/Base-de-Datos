-- Obtener el promedio de nota de aprobacion de 
-- las materias del departamento de codigo 75.

SELECT AVG(n.nota) AS promedio_de_aprobacion
FROM notas n
WHERE n.codigo = '75' AND n.nota > 4;