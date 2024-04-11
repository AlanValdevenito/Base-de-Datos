-- Obtener la cantidad de alumnos que tienen al menos 
-- una nota.

SELECT COUNT(DISTINCT n.padron)
FROM notas n;