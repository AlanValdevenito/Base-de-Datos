-- Devuelva todos los datos de las notas que no sean de 
-- la materia 75.1.

SELECT * 
FROM notas n
WHERE n.codigo <> '75' OR n.numero <> '1';

-- Forma alternativa

SELECT * 
FROM notas n
WHERE NOT (n.codigo = '75' AND n.numero = '1');