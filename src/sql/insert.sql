-- Insert data into the Recptionist table
INSERT INTO
    Recptionist(recptionistID, receptionistName, Salary)
VALUES
    ('R001', 'John Doe', 40000),
    ('R002', 'Jane Smith', 45000),
    ('R003', 'Mike Johnson', 50000);

-- Insert data into the Patient table
INSERT INTO
    Patient(patientID, patientName, age, gender)
VALUES
    ('P001', 'Alice Brown', '30', 'Female'),
    ('P002', 'Bob Smith', '45', 'Male'),
    ('P003', 'Charlie Davis', '25', 'Male');

-- Insert data into the Doctor table
INSERT INTO
    Doctor(doctorID, doctorName, department)
VALUES
    ('D001', 'Dr. John Smith', 'Cardiology'),
    ('D002', 'Dr. Sarah Johnson', 'Oncology'),
    ('D003', 'Dr. Mark Davis', 'Orthopedics');

-- Insert data into the Appointment table
INSERT INTO
    Appointment(appointmentID, Appointmentdate, doctorID)
VALUES
    ('A001', '2023-04-22 10:00:00', 'D001'),
    ('A002', '2023-04-23 11:00:00', 'D002'),
    ('A003', '2023-04-24 13:00:00', 'D003');

-- Insert data into the ElectronicPrescription table
INSERT INTO
    ElectronicPrescription(
        prescriptionID,
        patientID,
        doctorID,
        medicationName,
        dosage,
        frequency
    )
VALUES
    (
        'EP001',
        'P001',
        'D001',
        'Aspirin',
        '100mg',
        'once daily'
    ),
    (
        'EP002',
        'P002',
        'D002',
        'Ibuprofen',
        '200mg',
        'twice daily'
    ),
    (
        'EP003',
        'P003',
        'D003',
        'Acetaminophen',
        '500mg',
        'three times daily'
    );

-- Insert data into the HealthRecords table
INSERT INTO
    HealthRecords(summary, isCured, currentStatus, ID)
VALUES
    (
        'Patient has a mild headache',
        'No',
        'In progress',
        'HR001'
    ),
    (
        'Patient is suffering from fever',
        'No',
        'In progress',
        'HR002'
    ),
    (
        'Patient has a broken arm',
        'Yes',
        'Cured',
        'HR003'
    );

-- Insert data into the HospitalStaff table
INSERT INTO
    HospitalStaff(ID, staffName, department, salary, performance)
VALUES
    ('HS001', 'Emily Johnson', 'Nursing', 55000, 4),
    (
        'HS002',
        'David Brown',
        'Administrative',
        70000,
        5
    ),
    ('HS003', 'Linda Davis', 'Finance', 60000, 3);

-- Insert data into the Billing table
INSERT INTO
    Billing(
        billID,
        patientID,
        totalAmount,
        amountPaid,
        dueDate,
        currStatus
    )
VALUES
    (
        'B001',
        'P001',
        2000,
        1000,
        '2023-05-01',
        'Pending'
    ),
    (
        'B002',
        'P002',
        4000,
        2000,
        '2023-05-05',
        'Pending'
    ),
    (
        'B003',
        'P003',
        3000,
        1500,
        '2023-05-10',
        'Pending'
    );