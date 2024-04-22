--Create Users Table
CREATE TABLE Users(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username NVARCHAR(50) UNIQUE NOT NULL,
    u_password NVARCHAR(30)  NOT NULL,
    region_id INT NOT NULL REFERENCES Regions(id)

);

--Create Regions table
CREATE TABLE Regions(
    id SERIAL PRIMARY KEY,
    region_name TEXT NOT NULL
);

--Create Categories Table
CREATE TABLE Categories(
    id SERIAL PRIMARY KEY,
    category_name TEXT NOT NULL
)

--Create Posts Table
CREATE TABLE POSTS(
    id SERIAL PRIMARY KEY,
    title TEXT,
    comment TEXT,
    post_location TEXT NOT NULL,
    user_id INT NOT NULL REFERENCES Users(id),
    region_id INT NOT NULL REFERENCES Region(id),
    category_id INT NOT NULL REFERENCES Categories(id)

);