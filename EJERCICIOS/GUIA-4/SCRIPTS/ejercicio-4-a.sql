-- Encuentre la cantidad de partidos en que Kobe Bryant marco al menos 
-- 50 puntos, devolviendo únicamente dicha cantidad.

-- 1) Filtramos los datos para incluir solo aquellos correspondientes a
-- Kobe Bryant y aquellos partidos donde tenga al menos 50 puntos
-- 2) Devolvemos la cantidad de partidos donde se cumple esta condicion

SELECT COUNT(*) AS total_matches
FROM Actions a
WHERE a.player_name = 'Kobe Bryant' AND a.points >= 50;