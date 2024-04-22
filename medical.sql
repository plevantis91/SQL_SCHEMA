--Create Doctors Table
CREATE TABLE Doctors(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    speciality TEXT, 
    license_number TEXT
    );

--Create Patients Table
CREATE TABLE Patients(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    gender TEXT,
    contact_number TEXT,
    patient_address TEXT,
    insurance_number VARCHAR(20)
);

--Create Visits Table
CREATE TABLE Visits (
    id SERIAL PRIMARY KEY,
    doctor_id INT NOT NULL REFERENCES Doctors(id),
    patient_id INT NOT NULL REFERENCES Patients(id),
    v_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    
);

--Create Diagnoses Table
CREATE TABLE Diagnoses(
    id SERIAL PRIMARY KEY,
    visit_id INT NOT NULL REFERENCES Visits(id),
    disease_id INT NOT NULL REFERENCES Diseases(id),
    comment TEXT
);

--Create Diseases Table
CREATE TABLE Diseases(
    id SERIAL PRIMARY KEY,
    disease_name TEXT,
    disease_description Text
);


