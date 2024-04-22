--Create Teams Table
CREATE TABLE Teams (
    id SERIAL PRIMARY KEY,
    team_name TEXT NOT NULL,
    team_city TEXT NOT NULL
);

--Create Players Table
CREATE TABLE Players (
    id SERIAL PRIMARY KEY, 
    player_name TEXT NOT NULL,
    postion TEXT NOT NULL,
    AGE INT NOT NULL
    team_id INT NOT NULL REFERENCES Teams(id),
);

--Create Referees Table
CREATE TABLE Referees {
    id SERIAL PRIMARY KEY,
    ref_name TEXT NOT NULL
};

--Create Season Table
CREATE TABLE Season (
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

--Create Matches Table
CREATE TABLE Matches (
    id SERIAL PRIMARY KEY,
    home_team_id INT NOT NULL REFERENCES Teams(id)
    away_team_id INT NOT NULL REFERENCES Teams(id)
    season_id INT NOT NULL REFERENCES Seasons(id),
    match_date DATE NOT NULL,
    result TEXT NOT NULL,
    referee_id INT REFERENCES Referees(id)
);

--Create Goals
CREATE TABLE Goals(
    id SERIAL PRIMARY KEY,
    player_id INT NOT NULL REFERENCES Players(id),
    match_id INT NOT NULL REFERENCES Matches(id)
)

