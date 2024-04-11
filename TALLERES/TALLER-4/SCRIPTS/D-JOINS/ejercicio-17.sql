-- Listar el padron de aquellos alumnos que tengan mas de 
-- una nota en la materia 75.15.

SELECT DISTINCT n1.padron
FROM notas n1
INNER JOIN notas n2 ON (n1.padron = n2.padron
					   AND
					   n1.codigo = n2.codigo
					   AND
					   n1.numero = n2.numero
					   AND
					   n1.fecha > n2.fecha)
WHERE (n1.codigo = '75' AND n1.numero = '15');

-- Forma alternativa 1

SELECT DISTINCT n1.padron
FROM notas n1, notas n2
WHERE n1.padron = n2.padron
     AND 
	 n1.codigo = n2.codigo
     AND 
	 n1.numero = n2.numero
     AND 
	 n1.fecha > n2.fecha
     AND 
	 n1.codigo = '75'
     AND 
	 n1.numero = '15';

-- Forma alternativa 2

SELECT n.padron
FROM notas n
WHERE n.codigo = '75' AND n.numero = '15'
GROUP BY n.padron
HAVING COUNT(*) > 1;