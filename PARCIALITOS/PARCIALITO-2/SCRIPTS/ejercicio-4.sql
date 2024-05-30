SELECT a.padron, a.apellido, AVG(n.nota) AS promedio
FROM notas n LEFT JOIN alumnos a USING(padron)
GROUP BY a.padron
HAVING (COUNT(*) > 3) AND AVG(n.nota) >= 5;

-- Resultado

/* 
-------------------------------------------
| padron | apellido  | promedio           |
-------------------------------------------
| 88000  | Vargas    | 8.2500000000000000 |
| 87000  | Hernández | 7.5000000000000000 |
| 86000  | Díaz      | 7.8000000000000000 |
| 85000  | Fernández | 8.2500000000000000 |
| 84000  | López     | 7.5000000000000000 |
| 83000  | Gómez     | 8.5000000000000000 |
| 75000  | Onelli    | 5.2000000000000000 | 
| 73000  | Molina    | 6.6000000000000000 |
-------------------------------------------
*/