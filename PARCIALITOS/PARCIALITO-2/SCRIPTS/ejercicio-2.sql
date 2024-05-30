SELECT a.padron, a.apellido
FROM notas n INNER JOIN alumnos a USING(padron)
WHERE (n.codigo = 71 AND n.numero = 14)
INTERSECT
SELECT a.padron, a.apellido
FROM notas n INNER JOIN alumnos a USING(padron)
WHERE (n.codigo = 71 AND n.numero = 15)
EXCEPT
SELECT a.padron, a.apellido
FROM notas n INNER JOIN alumnos a USING(padron)
WHERE (n.codigo = 75 AND n.numero = 01)
EXCEPT
SELECT a.padron, a.apellido
FROM notas n INNER JOIN alumnos a USING(padron)
WHERE (n.codigo = 75 AND n.numero = 15);

-- Resultado

/* 
----------------------
| padron | apellido  |
----------------------
| 86000  | Díaz      |
----------------------
*/