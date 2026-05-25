-- =========================================================
-- Doctor-Patient Portal (Medi-Connect) Database Schema
-- File: database_schema.sql
-- =========================================================

-- 1. Create Patient / User Details Table
CREATE TABLE IF NOT EXISTS user_details (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    full_name VARCHAR(45) NOT NULL, 
    email VARCHAR(45) NOT NULL UNIQUE, 
    password VARCHAR(45), 
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Create Doctor Profile Table
CREATE TABLE IF NOT EXISTS doctor (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    fullName VARCHAR(45), 
    dateOfBirth VARCHAR(45), 
    qualification VARCHAR(45), 
    specialist VARCHAR(45), 
    email VARCHAR(45), 
    phone VARCHAR(45), 
    password VARCHAR(45)
);

-- 3. Create Appointment Transaction Table
CREATE TABLE IF NOT EXISTS appointment (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    userId INT, 
    fullName VARCHAR(45), 
    gender VARCHAR(45), 
    age VARCHAR(45), 
    appointmentDate VARCHAR(45), 
    email VARCHAR(45), 
    phone VARCHAR(45), 
    diseases VARCHAR(45), 
    doctorId INT, 
    address VARCHAR(45), 
    status VARCHAR(45)
);

-- 4. Create Specialist Categories Table
CREATE TABLE IF NOT EXISTS specialist (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    specialist_name VARCHAR(45)
);

-- =========================================================
-- Optional: Insert Default Data for Testing
-- =========================================================
INSERT INTO specialist (specialist_name) VALUES ('Cardiologist');
INSERT INTO specialist (specialist_name) VALUES ('Neurologist');
INSERT INTO specialist (specialist_name) VALUES ('General Physician');