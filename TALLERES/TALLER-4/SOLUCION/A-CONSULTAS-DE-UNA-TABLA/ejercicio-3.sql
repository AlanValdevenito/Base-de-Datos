-- Para cada nota registrada, devuelva el padron, codigo 
-- de departamento, numero de materia, fecha y nota 
-- expresada como un valor entre 1 y 100.

SELECT n.padron, n.codigo, n.numero, n.fecha, n.nota * 10
FROM notas n;