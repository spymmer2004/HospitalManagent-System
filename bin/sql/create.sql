-- Create a table to store registration information
create table Recptionist(
    recptionistID int,
    receptionistName varchar(30),
    -- Date of registration
    Salary int,
    -- ID of the patient associated with this registration
    constraint pk_receptionist PRIMARY KEY (recptionistID) -- Set registrationID as the primary key
);

-- Create a table to store patient information
create table Patient(
    patientID int,
    -- Unique ID for each patient
    patientName varchar(30),
    -- Patient name
    age varchar(30),
    -- Patient age
    gender varchar(30),
    constraint pk_patient PRIMARY KEY (patientID) -- Set patientID as the primary key
);

-- Create a table to store doctor information
create table Doctor(
    doctorID int,
    -- Unique ID for each doctor
    doctorName varchar(30),
    -- Name of the doctor
    department varchar(30),
    -- Speciality of the doctor
    constraint pk_doctor PRIMARY KEY (doctorID) -- Set doctorID as the primary key
);

-- Create a table to store appointment information
create table Appointment(
    appointmentID int,
    -- Unique ID for each appointment
    Appointmentdate Datetime,
    -- Date and time of appointment
    doctorID int,
    -- ID of the consultation associated with this appointment
    constraint pk_appointment PRIMARY KEY (appointmentID) -- Set appointmentID as the primary key
);

-- Create a table to store prescription information
create table ElectronicPrescription(
    prescriptionID int,
    patientID int,
    doctorID int,
    medicationName varchar(30),
    dosage varchar(30),
    frequency varchar(30),
    -- ID of the consultation associated with this prescription
    constraint pk_prescription PRIMARY KEY (prescriptionID) -- Set prescriptionID as the primary key
);

-- Create a table to store medication information
create table HealthRecords(
    summary varchar(30),
    -- Unique ID for each medication
    isCured varchar(30),
    -- Name of the medication
    currentStatus varchar(30),
    -- Dosage of the medication
    ID int,
    -- ID of the prescription associated with this medication
    constraint pk_healthrecords PRIMARY KEY (ID) -- Set medicationID
);

create table HospitalStaff(
    ID int,
    staffName varchar(30),
    department varchar(30),
    salary int,
    performance int,
    constraint pk_hospitalstaff PRIMARY KEY (ID) -- Set doctorID as the primary key
);

create table Billing(
    billID int,
    patientID int,
    totalAmount int,
    amountPaid int,
    dueDate Date,
    currStatus varchar(30),
    constraint pk_billing PRIMARY KEY (billID) -- Set doctorID as the primary key
);