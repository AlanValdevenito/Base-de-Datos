-- Creación de la tabla "teams"
DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
    team 			VARCHAR(50),
    players_used 	INTEGER 	NOT NULL,
    avg_age 		FLOAT 		NOT NULL,
    possession 		FLOAT 		NOT NULL,
    games 			INTEGER 	NOT NULL,
    goals 			INTEGER 	NOT NULL,
    assists 		INTEGER 	NOT NULL,
    cards_yellow 	INTEGER 	NOT NULL,
    cards_red 		INTEGER 	NOT NULL,
	CONSTRAINT pk_teams PRIMARY KEY (team) -- UNIQUE NOT NULL
);

-- Creación de la tabla "matches"
DROP TABLE IF EXISTS matches;
CREATE TABLE matches (
    team1 		VARCHAR(50),
    team2 		VARCHAR(50),
    goals_team1 INTEGER 	NOT NULL,
    goals_team2 INTEGER 	NOT NULL,
    stage 		VARCHAR(50) NOT NULL,
	CONSTRAINT pk_matches PRIMARY KEY (team1, team2, stage),
	FOREIGN KEY (team1) REFERENCES teams (team) ON UPDATE CASCADE,
	FOREIGN KEY (team2) REFERENCES teams (team) ON UPDATE CASCADE
);

-- Importamos los datos para la tabla teams
COPY teams
FROM 'C:\Users\user\Desktop\teams.csv' 
DELIMITER ';'
CSV HEADER -- Para saltear la primer linea del archivo (header)
ENCODING 'UTF8';

-- Importamos los datos para la tabla matches
COPY matches
FROM 'C:\Users\user\Desktop\matches.csv' 
DELIMITER ';'
CSV HEADER -- Para saltear la primer linea del archivo (header)
ENCODING 'UTF8';

-- Ejecutar una u otra para visualizar la tabla
SELECT * FROM teams;
SELECT * FROM matches;