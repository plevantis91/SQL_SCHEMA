-- Create Planets Table
CREATE TABLE Planets (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    orbital_period_in_years FLOAT NOT NULL,
    orbits_around TEXT NOT NULL,
    galaxy TEXT NOT NULL
);

-- Create Moons Table
CREATE TABLE Moons (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    planet_id INT NOT NULL REFERENCES Planets(id)
);

-- Insert Data into Planets Table
INSERT INTO Planets (name, orbital_period_in_years, orbits_around, galaxy)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way'),
  ('Mars', 1.88, 'The Sun', 'Milky Way'),
  ('Venus', 0.62, 'The Sun', 'Milky Way'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way');

-- Insert Data into Moons Table
INSERT INTO Moons (name, planet_id)
VALUES
  ('The Moon', 1),  -- Moon orbiting Earth
  ('Phobos', 2),    -- Moon orbiting Mars
  ('Deimos', 2),    -- Moon orbiting Mars
  -- Add more moon records here...
;
