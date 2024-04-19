-- Obtener el padron de los alumnos 
-- que tienen nota en todas las materias.

SELECT a.padron
FROM alumnos a
WHERE NOT EXISTS (
	SELECT m.codigo, m.numero FROM materias m
	EXCEPT
	SELECT n.codigo, n.numero FROM notas n WHERE (n.padron = a.padron)
);

-- 1) SELECT n.codigo, n.numero FROM notas n WHERE (n.padron = a.padron)

-- Esta linea nos da como resultado una tabla con aquellos alumnos que tienen notas.
-- Es importante ya que por ejemplo el alumno con padron 74000 no tiene notas.

-- 2) SELECT m.codigo, m.numero FROM materias m

-- Esta linea nos da como resultado una tabla con las materias.

-- 3) SELECT m.codigo, m.numero FROM materias m
--	  EXCEPT
--	  SELECT n.codigo, n.numero FROM notas n WHERE (n.padron = a.padron)

-- El operador EXCEPT devuelve las filas de la primera consulta que no 
-- están presentes en la segunda consulta

-- Estas lineas nos dan como resultado una tabla donde tenemos alumnos
-- que no tienen notas en todas las materias. Se puede leer como: 'Materias
-- exceptuando aquellas donde hay notas de alumnos'

-- Luego, el resultado final sera una tabla con el padron de los alumnos 
-- que tienen nota en todas las materias.