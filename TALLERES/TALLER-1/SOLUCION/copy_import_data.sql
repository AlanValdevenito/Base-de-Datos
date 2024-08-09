COPY teams
FROM 'G:\Mi unidad\BDD\Practica\Talleres\Taller 1\matches.csv' 
DELIMITER ';'
CSV HEADER -- Para saltear la primer linea del archivo (header)
ENCODING 'UTF8';