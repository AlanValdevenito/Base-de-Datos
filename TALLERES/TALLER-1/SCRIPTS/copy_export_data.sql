COPY teams
TO 'C:\Users\user\Desktop\SQL\matches_export.csv' 
DELIMITER ';'
CSV HEADER -- Para incluir la primer linea del archivo (header)
ENCODING 'UTF8';