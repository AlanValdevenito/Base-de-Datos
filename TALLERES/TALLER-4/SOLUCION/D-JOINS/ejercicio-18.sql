-- Obtenga el padron y nombre de los alumnos que aprobaron 
-- la materia 71.14 y no aprobaron la materia 71.15.

SELECT a.padron, a.nombre
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 14 AND n.nota >= 4
AND a.padron NOT IN (
	SELECT n1.padron
	FROM notas n1
	WHERE n1.codigo = 71 AND n1.numero = 15 AND n1.nota >= 4);

-- Esta ultima subconsulta devuelve
-- aquellos padrones tal que hayan
-- aprobado la materia 71.15. Luego, la condicion
-- devuelve los padrones que NO hayan aprobado
-- la materia 71.15.

-- Forma alternativa 1

SELECT a.padron, a.nombre
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 14 AND n.nota >= 4
EXCEPT
SELECT a.padron, a.nombre
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 15 AND n.nota >= 4;

-- Forma alternativa 2
     
SELECT a.padron, a.nombre
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 14 AND n.nota >= 4
AND NOT EXISTS (
	SELECT n1.padron
	FROM notas n1
	WHERE n1.codigo = 71 
	AND n1.numero = 15 
	AND n1.nota >= 4 
	AND n1.padron = a.padron);

-- Forma alternativa 3

SELECT a.padron, a.nombre
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 14 AND n.nota >= 4
AND a.padron <> ALL (
	SELECT n1.padron
	FROM notas n1
	WHERE n1.codigo = 71 
	AND n1.numero = 15 
	AND n1.nota >= 4 
	AND n1.padron = a.padron);