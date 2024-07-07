-- Create the database and use it
CREATE DATABASE IF NOT EXISTS hospital;
DROP DATABASE IF EXISTS hospital;
USE hospital;

-- Create the HOSPITAL table and insert data
CREATE TABLE hospital (
    HOSPITAL_ID INT PRIMARY KEY,
    Name VARCHAR(30),
    Address VARCHAR(30),
    Contact BIGINT
);

INSERT INTO hospital (HOSPITAL_ID, Name, Address, Contact) VALUES
(1001, 'om murakar', 'goregaon', 91362349),
(1002, 'jagruti morvekar', 'santacruz', 93216328),
(1003, 'yash swigi', 'santacruz', 14785274),
(1004, 'manshi jadhav', 'borivali', 148569),
(1005, 'harsh bhalekar', 'kandivali', 9632541),
(1006, 'sumit tamatar', 'mira road', 92587103);

-- Select data from the HOSPITAL table
SELECT * FROM hospital;

-- Create the PATIENT table and insert data
CREATE TABLE patient_table (
    patient_ID INT PRIMARY KEY,
    Name VARCHAR(30),
    Relative VARCHAR(30),
    Phone_no BIGINT,
    Emergency_no BIGINT,
    E_mail_id VARCHAR(30),
    Sex VARCHAR(10),
    AGE INT,
    Address VARCHAR(50),
    Blood_group VARCHAR(5),
    BED_NO INT,
    CHECK_IN DATE NOT NULL,
    CHECK_OUT DATE,
    Paymode VARCHAR(20),
    claim_no INT
);

INSERT INTO patient_table (patient_ID, Name, Relative, Phone_no, Emergency_no, E_mail_id, Sex, AGE, Address, Blood_group, BED_NO, CHECK_IN, CHECK_OUT, Paymode, claim_no) VALUES
(1, 'John Doe', 'Jane Doe', 1234567890, 9876543210, 'john@example.com', 'Male', 30, '123 Main St', 'O+', 101, '2023-06-01', '2023-06-10', 'Credit Card', 1),
(2, 'Mary Smith', 'James Smith', 1234567891, 9876543211, 'mary@example.com', 'Female', 25, '456 Elm St', 'A+', 102, '2023-06-02', '2023-06-11', 'Cash', 2),
(3, 'Robert Brown', 'Lisa Brown', 1234567892, 9876543212, 'robert@example.com', 'Male', 40, '789 Oak St', 'B+', 103, '2023-06-03', '2023-06-12', 'Insurance', 3),
(4, 'Emily Davis', 'David Davis', 1234567893, 9876543213, 'emily@example.com', 'Female', 35, '101 Pine St', 'AB+', 104, '2023-06-04', '2023-06-13', 'Credit Card', 4),
(5, 'Michael Wilson', 'Sarah Wilson', 1234567894, 9876543214, 'michael@example.com', 'Male', 50, '202 Cedar St', 'O-', 105, '2023-06-05', '2023-06-14', 'Cash', 5),
(6, 'Jessica Martinez', 'Carlos Martinez', 1234567895, 9876543215, 'jessica@example.com', 'Female', 45, '303 Birch St', 'A-', 106, '2023-06-06', '2023-06-15', 'Insurance', 6),
(7, 'David Garcia', 'Laura Garcia', 1234567896, 9876543216, 'david@example.com', 'Male', 28, '404 Maple St', 'B-', 107, '2023-06-07', '2023-06-16', 'Credit Card', 7),
(8, 'Sarah Anderson', 'Mark Anderson', 1234567897, 9876543217, 'sarah@example.com', 'Female', 32, '505 Ash St', 'AB-', 108, '2023-06-08', '2023-06-17', 'Cash', 8),
(9, 'James Thomas', 'Emily Thomas', 1234567898, 9876543218, 'james@example.com', 'Male', 55, '606 Fir St', 'O+', 109, '2023-06-09', '2023-06-18', 'Insurance', 9),
(10, 'Patricia Jackson', 'Henry Jackson', 1234567899, 9876543219, 'patricia@example.com', 'Female', 60, '707 Spruce St', 'A+', 110, '2023-06-10', '2023-06-19', 'Credit Card', 10),
(11, 'Christopher Harris', 'Emma Harris', 2234567890, 9876543220, 'christopher@example.com', 'Male', 48, '808 Willow St', 'B+', 111, '2023-06-11', '2023-06-20', 'Cash', 11),
(12, 'Amanda Lewis', 'John Lewis', 2234567891, 9876543221, 'amanda@example.com', 'Female', 22, '909 Redwood St', 'AB+', 112, '2023-06-12', '2023-06-21', 'Insurance', 12),
(13, 'Matthew Walker', 'Sophia Walker', 2234567892, 9876543222, 'matthew@example.com', 'Male', 36, '1010 Sequoia St', 'O-', 113, '2023-06-13', '2023-06-22', 'Credit Card', 13),
(14, 'Olivia Scott', 'Daniel Scott', 2234567893, 9876543223, 'olivia@example.com', 'Female', 29, '1111 Cedar St', 'A-', 114, '2023-06-14', '2023-06-23', 'Cash', 14),
(15, 'Joshua Robinson', 'Linda Robinson', 2234567894, 9876543224, 'joshua@example.com', 'Male', 41, '1212 Birch St', 'B-', 115, '2023-06-15', '2023-06-24', 'Insurance', 15),
(16, 'Isabella Young', 'Michael Young', 2234567895, 9876543225, 'isabella@example.com', 'Female', 38, '1313 Maple St', 'AB-', 116, '2023-06-16', '2023-06-25', 'Credit Card', 16),
(17, 'Daniel Allen', 'Megan Allen', 2234567896, 9876543226, 'daniel@example.com', 'Male', 47, '1414 Ash St', 'O+', 117, '2023-06-17', '2023-06-26', 'Cash', 17),
(18, 'Sophia King', 'William King', 2234567897, 9876543227, 'sophia@example.com', 'Female', 33, '1515 Fir St', 'A+', 118, '2023-06-18', '2023-06-27', 'Insurance', 18),
(19, 'Ryan Wright', 'Emily Wright', 2234567898, 9876543228, 'ryan@example.com', 'Male', 27, '1616 Spruce St', 'B+', 119, '2023-06-19', '2023-06-28', 'Credit Card', 19),
(20, 'Emma Hill', 'James Hill', 2234567899, 9876543229, 'emma@example.com', 'Female', 54, '1717 Willow St', 'AB+', 120, '2023-06-20', '2023-06-29', 'Cash', 20);

-- Select data from the PATIENT table
SELECT * FROM patient_table;

-- Create the DOCTOR table and insert data
CREATE TABLE doctor_table (
    Doctor_ID INT PRIMARY KEY,
    Name VARCHAR(30),
    Phone_no BIGINT,
    Speciality VARCHAR(30),
    E_mail_id VARCHAR(30),
    Sex VARCHAR(10),
    AGE INT,
    Address VARCHAR(50),
    Blood_group VARCHAR(5),
    Patient_bed INT,
    Salary INT
);

INSERT INTO doctor_table (Doctor_ID, Name, Phone_no, Speciality, E_mail_id, Sex, AGE, Address, Blood_group, Patient_bed, Salary) VALUES
(1, 'Dr. John Smith', 1234567890, 'Cardiology', 'smith@example.com', 'Male', 45, '123 Main St', 'O+', 101, 120000),
(2, 'Dr. Mary Johnson', 1234567891, 'Neurology', 'johnson@example.com', 'Female', 50, '456 Elm St', 'A+', 102, 125000),
(3, 'Dr. Robert Williams', 1234567892, 'Orthopedics', 'williams@example.com', 'Male', 38, '789 Oak St', 'B+', 103, 110000),
(4, 'Dr. Patricia Brown', 1234567893, 'Pediatrics', 'brown@example.com', 'Female', 42, '101 Pine St', 'AB+', 104, 115000),
(5, 'Dr. Michael Jones', 1234567894, 'Dermatology', 'jones@example.com', 'Male', 48, '202 Cedar St', 'O-', 105, 122000),
(6, 'Dr. Linda Garcia', 1234567895, 'Gastroenterology', 'garcia@example.com', 'Female', 46, '303 Birch St', 'A-', 106, 118000),
(7, 'Dr. David Miller', 1234567896, 'Oncology', 'iller@example.com', 'Male', 52, '404 Maple St', 'B-', 107, 130000),
(8, 'Dr. Barbara Davis', 1234567897, 'Ophthalmology', 'avis@example.com', 'Female', 39, '505 Ash St', 'AB-', 108, 113000),
(9, 'Dr. James Wilson', 1234567898, 'Psychiatry', 'ilson@example.com', 'Male', 41, '606 Fir St', 'O+', 109, 117000),
(10, 'Dr. Elizabeth Martinez', 1234567899, 'Radiology', 'martinez@example.com', 'Female', 44, '707 Spruce St', 'A+', 110, 121000),
(11, 'Dr. Christopher Anderson', 2234567890, 'Urology', 'anderson@example.com', 'Male', 47, '808 Willow St', 'B+', 111, 119000),
(12, 'Dr. Susan Thomas', 2234567891, 'Endocrinology', 'thomas@example.com', 'Female', 53, '909 Redwood St', 'AB+', 112, 126000),
(13, 'Dr. Matthew Jackson', 2234567892, 'Hematology', 'jackson@example.com', 'Male', 40, '1010 Sequoia St', 'O-', 113, 115000),
(14, 'Dr. Nancy White', 2234567893, 'Nephrology', 'white@example.com', 'Female', 37, '1111 Cedar St', 'A-', 114, 112000),
(15, 'Dr. Anthony Harris', 2234567894, 'Rheumatology', 'harris@example.com', 'Male', 51, '1212 Birch St', 'B-', 115, 128000),
(16, 'Dr. Karen Martin', 2234567895, 'Immunology', 'martin@example.com', 'Female', 43, '1313 Maple St', 'AB-', 116, 123000),
(17, 'Dr. Charles Thompson', 2234567896, 'Pulmonology', 'thompson@example.com', 'Male', 49, '1414 Ash St', 'O+', 117, 124000),
(18, 'Dr. Sarah Garcia', 2234567897, 'Allergy', 'garcia@example.com', 'Female', 36, '1515 Fir St', 'A+', 118, 114000),
(19, 'Dr. Daniel Martinez', 2234567898, 'Infectious Disease', 'martinez@example.com', 'Male', 54, '1616 Spruce St', 'B+', 119, 127000),
(20, 'Dr. Laura Lee', 2234567899, 'Anesthesiology', 'lee@example.com', 'Female', 45, '1717 Willow St', 'AB+', 120, 120000);


-- Select data from the DOCTOR table
SELECT * FROM doctor_table;

-- Create the NURSE table and insert data
CREATE TABLE nurse (
    Nurse_ID INT PRIMARY KEY,
    Name VARCHAR(30),
    Phone_no BIGINT,
    E_mail_id VARCHAR(30),
    Sex VARCHAR(10),
    AGE INT,
    Address VARCHAR(50),
    Blood_group VARCHAR(5),
    Patient_bed INT,
    Salary INT
);

INSERT INTO nurse (Nurse_ID, Name, Phone_no, E_mail_id, Sex, AGE, Address, Blood_group, Patient_bed, Salary) VALUES
(1, 'Alice Smith', 1234567890, 'alice.smith@example.com', 'Female', 30, '123 Main St', 'O+', 101, 60000),
(2, 'Bob Johnson', 1234567891, 'bob.johnson@example.com', 'Male', 35, '456 Elm St', 'A+', 102, 62000),
(3, 'Catherine Lee', 1234567892, 'catherine.lee@example.com', 'Female', 28, '789 Oak St', 'B+', 103, 61000),
(4, 'David Kim', 1234567893, 'david.kim@example.com', 'Male', 32, '101 Pine St', 'AB+', 104, 63000),
(5, 'Eva Brown', 1234567894, 'eva.brown@example.com', 'Female', 45, '202 Cedar St', 'O-', 105, 64000),
(6, 'Frank Wilson', 1234567895, 'frank.wilson@example.com', 'Male', 50, '303 Birch St', 'A-', 106, 65000),
(7, 'Grace Taylor', 1234567896, 'grace.taylor@example.com', 'Female', 29, '404 Maple St', 'B-', 107, 60000),
(8, 'Henry Davis', 1234567897, 'henry.davis@example.com', 'Male', 40, '505 Ash St', 'AB-', 108, 62000),
(9, 'Isabel Martinez', 1234567898, 'isabel.martinez@example.com', 'Female', 33, '606 Fir St', 'O+', 109, 61000),
(10, 'Jack Thomas', 1234567899, 'jack.thomas@example.com', 'Male', 38, '707 Spruce St', 'A+', 110, 63000),
(11, 'Kelly Clark', 2234567890, 'kelly.clark@example.com', 'Female', 31, '808 Willow St', 'B+', 111, 64000),
(12, 'Larry Rodriguez', 2234567891, 'larry.rodriguez@example.com', 'Male', 42, '909 Redwood St', 'AB+', 112, 65000),
(13, 'Maria Lewis', 2234567892, 'maria.lewis@example.com', 'Female', 37, '1010 Sequoia St', 'O-', 113, 60000),
(14, 'Nathan Lee', 2234567893, 'nathan.lee@example.com', 'Male', 36, '1111 Cedar St', 'A-', 114, 62000),
(15, 'Olivia Walker', 2234567894, 'olivia.walker@example.com', 'Female', 44, '1212 Birch St', 'B-', 115, 61000),
(16, 'Paul Harris', 2234567895, 'paul.harris@example.com', 'Male', 48, '1313 Maple St', 'AB-', 116, 63000),
(17, 'Quinn Young', 2234567896, 'quinn.young@example.com', 'Female', 29, '1414 Ash St', 'O+', 117, 64000),
(18, 'Rachel Hall', 2234567897, 'rachel.hall@example.com', 'Female', 41, '1515 Fir St', 'A+', 118, 65000),
(19, 'Steven Allen', 2234567898, 'steven.allen@example.com', 'Male', 34, '1616 Spruce St', 'B+', 119, 60000),
(20, 'Tina King', 2234567899, 'tina.king@example.com', 'Female', 47, '1717 Willow St', 'AB+', 120, 62000);

-- Create the MEDICAL_DATABASE table and insert data
CREATE TABLE medical_database (
    med_id INT PRIMARY KEY,
    med_name VARCHAR(80),
    expiry_date DATE,
    price FLOAT,
    disease VARCHAR(50),
    discount FLOAT,
    UNIQUE (med_name, price, expiry_date)
);

INSERT INTO medical_database (med_id, med_name, expiry_date, price, disease, discount) VALUES
(1, 'Paracetamol', '2025-12-31', 0.50, 'Fever', 0.10),
(2, 'Ibuprofen', '2024-11-30', 1.00, 'Pain', 0.15),
(3, 'Amoxicillin', '2026-01-15', 1.50, 'Infection', 0.20),
(4, 'Cetirizine', '2025-06-20', 0.80, 'Allergy', 0.05),
(5, 'Metformin', '2027-03-10', 2.00, 'Diabetes', 0.25),
(6, 'Aspirin', '2025-09-30', 0.75, 'Heart Disease', 0.12),
(7, 'Losartan', '2026-07-25', 1.20, 'Hypertension', 0.18),
(8, 'Lisinopril', '2025-05-15', 1.30, 'Hypertension', 0.22),
(9, 'Atorvastatin', '2026-08-05', 2.50, 'High Cholesterol', 0.20),
(10, 'Levothyroxine', '2027-01-25', 1.75, 'Thyroid', 0.10),
(11, 'Omeprazole', '2025-11-10', 1.40, 'Acid Reflux', 0.15),
(12, 'Albuterol', '2024-10-20', 2.30, 'Asthma', 0.18),
(13, 'Gabapentin', '2026-12-15', 3.00, 'Neuropathy', 0.25),
(14, 'Amlodipine', '2026-06-25', 1.10, 'Hypertension', 0.12),
(15, 'Furosemide', '2025-04-30', 0.90, 'Edema', 0.10),
(16, 'Prednisone', '2026-05-20', 1.60, 'Inflammation', 0.15),
(17, 'Clopidogrel', '2025-02-28', 1.80, 'Blood Clot', 0.22),
(18, 'Warfarin', '2026-03-15', 2.20, 'Blood Clot', 0.20),
(19, 'Montelukast', '2027-08-10', 2.00, 'Asthma', 0.18),
(20, 'Insulin', '2025-01-01', 3.50, 'Diabetes', 0.30);





-- Create the index on the BED_NO column in the patient_table
CREATE INDEX idx_bed_no ON patient_table(BED_NO);

-- Create the composite index on the referenced columns in the medical_database table
CREATE INDEX idx_medical_composite ON medical_database(med_name, price, expiry_date);

-- Now create the billing_database table with the foreign key constraints
CREATE TABLE billing_database (
    med_name VARCHAR(50),
    price FLOAT,
    expiry_date DATE,
    paymode VARCHAR(20),
    bed_no INT,
    PRIMARY KEY (med_name, price, expiry_date),
    FOREIGN KEY (med_name, price, expiry_date) REFERENCES medical_database(med_name, price, expiry_date),
    FOREIGN KEY (bed_no) REFERENCES patient_table(BED_NO)
);

-- Create the BILLING_DATABASE table and insert data


INSERT INTO billing_database (med_name, price, expiry_date, paymode, bed_no) VALUES
('Paracetamol', 0.50, '2025-12-31', 'Cash', 101),
('Ibuprofen', 1.00, '2024-11-30', 'Credit Card', 102),
('Amoxicillin', 1.50, '2026-01-15', 'Insurance', 103),
('Cetirizine', 0.80, '2025-06-20', 'Cash', 104),
('Metformin', 2.00, '2027-03-10', 'Credit Card', 105),
('Aspirin', 0.75, '2025-09-30', 'Insurance', 106),
('Losartan', 1.20, '2026-07-25', 'Cash', 107),
('Lisinopril', 1.30, '2025-05-15', 'Credit Card', 108),
('Atorvastatin', 2.50, '2026-08-05', 'Insurance', 109),
('Levothyroxine', 1.75, '2027-01-25', 'Cash', 110),
('Omeprazole', 1.40, '2025-11-10', 'Credit Card', 111),
('Albuterol', 2.30, '2024-10-20', 'Insurance', 112),
('Gabapentin', 3.00, '2026-12-15', 'Cash', 113),
('Amlodipine', 1.10, '2026-06-25', 'Credit Card', 114),
('Furosemide', 0.90, '2025-04-30', 'Insurance', 115),
('Prednisone', 1.60, '2026-05-20', 'Cash', 116),
('Clopidogrel', 1.80, '2025-02-28', 'Credit Card', 117),
('Warfarin', 2.20, '2026-03-15', 'Insurance', 118),
('Montelukast', 2.00, '2027-08-10', 'Cash', 119),
('Insulin', 3.50, '2025-01-01', 'Credit Card', 120);


-- Select data from the BILLING_DATABASE table
SELECT * FROM billing_database;


ALTER TABLE doctor_table
ADD CONSTRAINT fk_doctor_bed
FOREIGN KEY (Patient_bed)
REFERENCES patient_table(BED_NO);

-- want to Add bed_no in nurse table  

-- Step 1: Add the BED_NO column to the nurse table
ALTER TABLE nurse
ADD BED_NO INT;

-- Step 2: Add the foreign key constraint
ALTER TABLE nurse
ADD CONSTRAINT fk_nurse_bed
FOREIGN KEY (BED_NO)
REFERENCES patient_table(BED_NO);




