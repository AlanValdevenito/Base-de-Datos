-- Creación de la tabla "teams"
DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
    team 			VARCHAR(50) NOT NULL,
    players_used 	INTEGER 	NOT NULL,
    avg_age 		FLOAT 		NOT NULL,
    possession 		FLOAT 		NOT NULL,
    games 			INTEGER 	NOT NULL,
    goals 			INTEGER 	NOT NULL,
    assists 		INTEGER 	NOT NULL,
    cards_yellow 	INTEGER 	NOT NULL,
    cards_red 		INTEGER 	NOT NULL
);

-- Creación de la tabla "matches"
DROP TABLE IF EXISTS matches;
CREATE TABLE matches (
    team1 		VARCHAR(50) NOT NULL,
    team2 		VARCHAR(50) NOT NULL,
    goals_team1 INTEGER 	NOT NULL,
    goals_team2 INTEGER 	NOT NULL,
    stage 		VARCHAR(50) NOT NULL
);