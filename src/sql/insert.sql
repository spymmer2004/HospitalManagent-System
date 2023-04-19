-- Insert sample data into Recptionist table
insert into
    Recptionist (recptionistID, receptionistName, Salary)
values
    (1, 'John Doe', 3000),
    (2, 'Jane Smith', 3500),
    (3, 'Bob Johnson', 4000);

-- Insert sample data into Patient table
insert into
    Patient (patientID, patientName, age, gender)
values
    ('P001', 'Mary Smith', '35', 'Female'),
    ('P002', 'John Brown', '45', 'Male'),
    ('P003', 'Linda Lee', '25', 'Female');

-- Insert sample data into Doctor table
insert into
    Doctor (doctorID, doctorName, department)
values
    (1, 'Dr. James Smith', 'Cardiology'),
    (2, 'Dr. Lisa Lee', 'Pediatrics'),
    (3, 'Dr. Michael Johnson', 'Orthopedics');

-- Insert sample data into Appointment table
insert into
    Appointment (appointmentID, Appointmentdate, doctorID)
values
    ('A001', '2023-05-01 10:00:00', 1),
    ('A002', '2023-05-02 11:00:00', 2),
    ('A003', '2023-05-03 12:00:00', 3);

-- Insert sample data into ElectronicPrescription table
insert into
    ElectronicPrescription (
        prescriptionID,
        patientID,
        doctorID,
        medicationName,
        dosage,
        frequency
    )
values
    (1, 1, 1, 'Aspirin', '1 tablet', 'once a day'),
    (2, 2, 2, 'Tylenol', '2 tablets', 'twice a day'),
    (
        3,
        3,
        3,
        'Ibuprofen',
        '1 tablet',
        'three times a day'
    );

-- Insert sample data into HealthRecords table
insert into
    HealthRecords (summary, isCured, currentStatus, ID)
values
    (
        'Patient has a fever',
        'No',
        'Ongoing treatment',
        1
    ),
    ('Patient has a headache', 'Yes', 'Cured', 2),
    (
        'Patient has a broken leg',
        'No',
        'Ongoing treatment',
        3
    );

-- Insert sample data into HospitalStaff table
insert into
    HospitalStaff (ID, staffName, department, salary, performance)
values
    ('S001', 'Emily Davis', 'Administration', 4500, 8),
    ('S002', 'Mark Jones', 'Accounting', 5000, 9),
    ('S003', 'David Lee', 'Human Resources', 4000, 7);

-- Insert sample data into Billing table
insert into
    Billing (
        billID,
        patientID,
        totalAmount,
        amountPaid,
        dueDate,
        status
    )
values
    (1, 1, 500, 0, '2023-05-10', 'Unpaid'),
    (2, 2, 1000, 500, '2023-05-15', 'Partially Paid'),
    (3, 3, 2000, 2000, '2023-05-20', 'Paid');