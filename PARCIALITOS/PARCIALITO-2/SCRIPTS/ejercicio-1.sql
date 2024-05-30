SELECT n.padron, a.apellido
FROM notas n INNER JOIN alumnos a USING(padron)
WHERE (n.nota >= 4)
GROUP BY n.padron, a.apellido
HAVING COUNT(*) >= ALL (
	SELECT COUNT(*)
	FROM notas n
	WHERE (n.nota >= 4)
	GROUP BY n.padron
);

-- Resultado

/* 
---------------------
| padron | apellido |
---------------------
| 73000  | Molina   |
| 86000  | Díaz     |
---------------------
*/