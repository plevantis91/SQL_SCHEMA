-- Create Passengers Table
CREATE TABLE Passengers (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

-- Create Airlines Table
CREATE TABLE Airlines (
    id SERIAL PRIMARY KEY,
    airline_name TEXT NOT NULL
);

-- Create Flights Table
CREATE TABLE Flights (
    id SERIAL PRIMARY KEY,
    airline_id INT NOT NULL REFERENCES Airlines(id),
    from_city TEXT NOT NULL,
    from_country TEXT NOT NULL,
    to_city TEXT NOT NULL,
    to_country TEXT NOT NULL,
    departure TIMESTAMP WITH TIME ZONE NOT NULL,
    arrival TIMESTAMP WITH TIME ZONE NOT NULL,
    seat TEXT NOT NULL
);

-- Create Tickets Table (Association Table)
CREATE TABLE Tickets (
    id SERIAL PRIMARY KEY,
    passenger_id INT NOT NULL REFERENCES Passengers(id),
    flight_id INT NOT NULL REFERENCES Flights(id)
);
