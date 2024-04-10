-- Kobe Bryant llego a convertir 5640 puntos en los playoffs. 
-- Encuentre a aquellos jugadores que hayan superado la marca 
-- de 5640 puntos, indicando para cada uno su nombre y la 
-- cantidad de puntos que convirtio en playoffs.

-- 1) Combinamos las tablas Actions y Matches en base al atributo 'match_id'
-- 2) Filtramos los datos para incluir solo aquellos correspondientes a
-- partidos de playoffs
-- 3) Agrupamos los datos por nombre de jugador y calculamos la suma de puntos
-- para cada jugador
-- 4) Devolvemos una tabla con el nombre del jugador y la suma total de sus puntos

SELECT a.player_name, SUM(a.points) AS total_points_playoffs
FROM Actions a INNER JOIN Matches m ON (a.match_id = m.match_id)
WHERE m.stage_name = 'playoffs'
GROUP BY a.player_name
HAVING SUM(a.points) >= 5640;