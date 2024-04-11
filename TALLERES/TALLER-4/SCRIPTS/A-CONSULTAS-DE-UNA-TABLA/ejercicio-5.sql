-- Ejecute una consulta SQL que devuelva el padron y 
-- nombre de los alumnos cuyo apellido es “Molina".

SELECT a.padron, a.nombre
FROM alumnos a
WHERE UPPER(a.apellido) = 'MOLINA';

-- Hay que definir un modo de almacenar los datos.
-- Las mayusculas y minusculas en una base de datos
-- pueden traer problemas. Hay que normalizar las cosas y
-- es buena practica para estandarizar.

-- Es posible comparar con ILIKE, pero esta forma no aprovecha indices.

-- Se recomienda utilizar funciones UPPER o LOWER para busquedas.