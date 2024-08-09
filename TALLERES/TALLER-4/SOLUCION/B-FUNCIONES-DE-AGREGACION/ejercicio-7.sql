-- Obtener la mejor nota registrada en la materia 75.15.

SELECT MAX(n.nota) AS mejor_nota
FROM notas n
WHERE n.codigo = '75' AND n.numero = '15';