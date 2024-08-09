-- Obtener el padron de los alumnos que ingresaron a la
-- facultad en el año 2010.

SELECT a.padron
FROM alumnos a
WHERE EXTRACT(YEAR FROM a.fecha_ingreso) = 2010;

-- Forma alternativa

SELECT a.padron
FROM alumnos a
WHERE TO_CHAR(a.fecha_ingreso, 'YYYY') = '2010';