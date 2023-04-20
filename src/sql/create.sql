-- Create a table to store registration information 
create table Receptionist(
    receptionistID varchar(30),
    receptionistName varchar(30),
    salary int,
    constraint pk_receptionist PRIMARY KEY (receptionistID) -- Set receptionistID as the primary key
);

-- Create a table to store patient information
create table Patient(
    patientID varchar(30),
    patientName varchar(30),
    age int,
    gender varchar(30),
    constraint pk_patient PRIMARY KEY (patientID) -- Set patientID as the primary key
);

-- Create a table to store doctor information
create table Doctor(
    doctorID varchar(30),
    doctorName varchar(30),
    department varchar(30),
    constraint pk_doctor PRIMARY KEY (doctorID) -- Set doctorID as the primary key
);

-- Create a table to store appointment information
create table Appointment(
    appointmentID varchar(30),
    appointmentDate datetime,
    doctorID varchar(30),
    patientID varchar(30),
    constraint pk_appointment PRIMARY KEY (appointmentID) -- Set appointmentID as the primary key
);

-- Create a table to store prescription information
create table ElectronicPrescription(
    prescriptionID varchar(30),
    doctorID varchar(30),
    patientID varchar(30),
    medicationName varchar(30),
    dosage varchar(30),
    frequency varchar(30),
    constraint pk_prescription PRIMARY KEY (prescriptionID) -- Set prescriptionID as the primary key
);

-- Create a table to store medication information
create table HealthRecord(
    recordID varchar(30),
    prescriptionID varchar(30),
    summary varchar(30),
    isCured bit,
    currentStatus varchar(30),
    constraint pk_healthrecord PRIMARY KEY (recordID) -- Set recordID as the primary key
);

-- Create a table to store billing information
create table Billing(
    billID varchar(30),
    patientID varchar(30),
    totalAmount int,
    amountPaid int,
    dueDate datetime,
    currentStatus varchar(30),
    constraint pk_billing PRIMARY KEY (billID) -- Set billID as the primary key
);

-- Create a table to store hospital staff information
create table HospitalStaff(
    staffID varchar(30),
    staffName varchar(30),
    staffType varchar(30),
    department varchar(30),
    salary int,
    performance int,
    constraint pk_hospitalstaff PRIMARY KEY (staffID) -- Set staffID as the primary key
);