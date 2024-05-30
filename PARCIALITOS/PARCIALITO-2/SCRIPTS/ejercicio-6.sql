SELECT n.padron
FROM notas n INNER JOIN (
    SELECT n1.codigo, n1.numero
    FROM notas n1
    WHERE n1.padron = 71000
    AND n1.nota >= 4
) AS m ON (n.codigo = m.codigo AND n.numero = m.numero)
GROUP BY n.padron
HAVING COUNT(DISTINCT CONCAT(n.codigo, n.numero)) = (
    SELECT COUNT(DISTINCT CONCAT(n2.codigo, n2.numero))
    FROM notas n2
    WHERE n2.padron = 71000
    AND n2.nota >= 4
);

-- Explicacion

-- Primero nos quedamos con aquellos alumnos que compartan las mismas materias aprobadas que las
-- materias que aprobo el alumno de padron 71000.
-- Notemos que podriamos tener alumnos que no hayan aprobado todas las materias que tiene aprobadas
-- el alumno de padron 7100.

-- Luego, nos quedamos con aquellos alumnos que tengan exactamente la misma cantidad de materias aprobadas 
-- que el alumno de padron 71000.

-- Resultado

/* 
----------
| padron |
----------
| 88000  |
| 75000  |
| 73000  |
| 72000  |
| 71000  |
----------
*/