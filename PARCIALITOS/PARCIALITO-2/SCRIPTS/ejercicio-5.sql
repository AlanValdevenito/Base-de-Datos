SELECT n.padron, n.codigo AS codigo_departamento, n.numero AS numero_materia, n.nota
FROM notas n INNER JOIN alumnos a USING(padron)
WHERE a.fecha_ingreso <= ALL (
	SELECT a1.fecha_ingreso
	FROM notas n1 INNER JOIN alumnos a1 USING(padron)
);

-- Resultado

/* 
---------------------------------------------------------
| padron | codigo_departamento  | numero_materia | nota |
---------------------------------------------------------
| 71000  | 75    			    | 1 			 | 4    |
| 71000  | 75 				    | 6 			 | 2    |
| 71000  | 75      				| 6 			 | 6    |
| 71000  | 71 					| 14 			 | 7    |
---------------------------------------------------------
*/