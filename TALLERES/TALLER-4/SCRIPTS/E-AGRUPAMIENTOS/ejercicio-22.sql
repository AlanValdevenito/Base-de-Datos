-- Para cada alumno con al menos tres notas, devuelva su 
-- padron, nombre, promedio de notas y mejor nota registrada.

SELECT a.padron, a.nombre, AVG(n.nota) AS promedio_notas, MAX(n.nota) AS mejor_nota
FROM alumnos a
INNER JOIN notas n ON a.padron = n.padron
GROUP BY a.padron
HAVING COUNT(*) >= 3;