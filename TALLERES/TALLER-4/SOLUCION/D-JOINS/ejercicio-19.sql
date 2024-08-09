-- Obtener, sin repeticiones, todos los pares de padrones 
-- de alumnos tales que ambos alumnos rindieron la misma
-- materia el mismo dıa. Devuelva tambien la fecha y el
-- codigo y numero de la materia.

SELECT DISTINCT n1.padron, n2.padron, n1.fecha, n1.codigo, n1.numero
FROM notas n1 INNER JOIN notas n2 ON (
n1.padron > n2.padron
AND
n1.codigo = n2.codigo
AND
n1.numero = n2.numero
AND
n1.fecha = n2.fecha);