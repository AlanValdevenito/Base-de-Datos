-- Devuelva para cada materia dos columnas: una llamada 
-- “codigo” que contenga una concatenacion del codigo de
-- departamento, un punto y el numero de materia, con el 
-- formato “XX.YY” (ambos valores con dos dıgitos, agregando
-- ceros a la izquierda en caso de ser necesario) y otra 
-- con el nombre de la materia.

SELECT to_char(m.codigo, 'fm00') || '.' || to_char(m.numero, 'fm00') AS codigo
FROM materias m;