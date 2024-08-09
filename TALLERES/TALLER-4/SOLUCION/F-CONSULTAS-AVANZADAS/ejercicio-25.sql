-- Obtener el promedio general de notas por 
-- alumno (cuantas notas tiene en promedio un
-- alumno), considerando unicamente alumnos 
-- con al menos una nota.

SELECT ((CAST (COUNT(*) AS decimal)) / COUNT(DISTINCT n.padron)) AS promedio_general
FROM notas n;

-- Notemos que si un alumno tiene al menos una
-- nota, este aparecera en la tabla 'notas'.

-- Luego, la cuenta es CANTIDAD TOTAL DE NOTAS / CANTIDAD DE ALUMNOS.