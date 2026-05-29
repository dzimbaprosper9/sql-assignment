-- Q.3.1: Create the Patient table
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    PatientEmail VARCHAR(100)
);

-- Q.3.2: Create the Appointment table
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    AppointmentNumber VARCHAR(20),
    AppointmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

-- Q.3.3: Insert data into Patient table
INSERT INTO Patient (PatientID, PatientName, PatientEmail)
VALUES (1, 'Debbie Duncan', 'dduncan@yahoo.com');

-- Q.3.3: Insert data into Appointment table
INSERT INTO Appointment (AppointmentID, AppointmentNumber, PatientID, AppointmentDate)
VALUES (1, 'A224466', 1, '2026-02-14');
