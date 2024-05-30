SELECT c.codigo AS codigo_carrera, n1.codigo AS codigo_departamento, AVG(n1.nota) AS promedio
FROM notas n1 INNER JOIN inscripto_en ie ON (n1.padron = ie.padron)
LEFT JOIN carreras c ON (c.codigo = ie.codigo)
GROUP BY n1.codigo, c.codigo
ORDER BY codigo_carrera, codigo_departamento ASC;

/* 
--------------------------------------------------------------
| codigo_carrera | codigo_departamento  | promedio           |
--------------------------------------------------------------
| 5              | 61                   | 7.0000000000000000 |
| 5              | 62                   | 7.2500000000000000 |
| 6              | 61                   | 8.8000000000000000 |
| 6              | 62                   | 7.0000000000000000 |
| 9              | 71                   | 6.7142857142857143 |
| 9              | 75                   | 6.6923076923076923 |
| 10             | 71                   | 6.7500000000000000 |
| 10             | 75                   | 6.5000000000000000 |
--------------------------------------------------------------
*/