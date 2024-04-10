-- Encuentre la cantidad de puntos que marco Kobe Bryant en el ultimo 
-- partido oficial que jugo, indicando el nombre del equipo local, el 
-- nombre del equipo visitante y la cantidad de puntos marcados por Kobe.

-- 1) Combinamos las tablas Actions y Matches en base al atributo 'match_id'
-- 2) Filtramos los datos para incluir solo aquellos correspondientes a
-- Kobe Bryant y aquel partido cuya fecha sea de su ultimo partido oficial

SELECT m.local_team, m.visiting_team, a.points
FROM Actions a INNER JOIN Matches m ON (a.match_id = m.match_id)
WHERE a.player_name = 'Kobe Bryant' AND m.date = (SELECT MAX(m2.date)
                                                  FROM Actions a2 INNER JOIN Matches m2 ON (a2.match_id = m2.match_id)
                                                  WHERE a2.player_name = 'Kobe Bryant');

-- Nota: Para poder filtrar los datos y quedarnos con aquel partido cuya
-- fecha sea de su ultimo partido oficial hacemos una subconsulta.
-- Basicamente la consulta es identica a la original, pero devolvemos
-- la fecha mas reciente.