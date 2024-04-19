-- Obtener el codigo y numero de la o las 
-- materias con mayor cantidad de notas registradas.

SELECT n.codigo, n.numero, COUNT(*) AS cantidad_notas
FROM notas n
GROUP BY n.codigo, n.numero
HAVING COUNT(*) >= ALL (
	SELECT COUNT(*)
	FROM notas n
	GROUP BY n.codigo, n.numero
);

-- Notemos que no necesitamos usar la tabla 'materias' ya 
-- que la tabla 'notas' contiene tanto las materias 
-- como las notas (cada fila representa una nota).