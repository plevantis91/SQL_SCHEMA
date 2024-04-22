-- Create Artists Table
CREATE TABLE Artists (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create Albums Table
CREATE TABLE Albums (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    release_date DATE NOT NULL
);

-- Create Producers Table
CREATE TABLE Producers (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create Songs Table
CREATE TABLE Songs (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    duration_in_seconds INTEGER NOT NULL,
    album_id INT NOT NULL REFERENCES Albums(id),
    PRIMARY KEY (id, album_id)  -- Composite Primary Key to ensure uniqueness per album
);

-- Create SongArtists Table (Association Table)
CREATE TABLE SongArtists (
    song_id INT NOT NULL REFERENCES Songs(id),
    artist_id INT NOT NULL REFERENCES Artists(id),
    PRIMARY KEY (song_id, artist_id)  -- Composite Primary Key to represent song-artist relationship
);

-- Create SongProducers Table (Association Table)
CREATE TABLE SongProducers (
    song_id INT NOT NULL REFERENCES Songs(id),
    producer_id INT NOT NULL REFERENCES Producers(id),
    PRIMARY KEY (song_id, producer_id)  -- Composite Primary Key to represent song-producer relationship
);
