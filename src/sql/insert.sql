-- Insert receptionist data
INSERT INTO
    Receptionist (receptionistID, receptionistName, salary)
VALUES
    ('R001', 'John Doe', 40000),
    ('R002', 'Jane Smith', 45000),
    ('R003', 'Mark Johnson', 50000);

-- Insert patient data
INSERT INTO
    Patient (patientID, patientName, age, gender)
VALUES
    ('P001', 'Alice Green', 25, 'Female'),
    ('P002', 'Bob Brown', 40, 'Male'),
    ('P003', 'Charlie Davis', 55, 'Male');

-- Insert doctor data
INSERT INTO
    Doctor (doctorID, doctorName, department)
VALUES
    ('D001', 'Dr. Emily Lee', 'Cardiology'),
    ('D002', 'Dr. Michael Brown', 'Oncology'),
    ('D003', 'Dr. Sarah Johnson', 'Neurology');

-- Insert appointment data
INSERT INTO
    Appointment (
        appointmentID,
        appointmentDate,
        doctorID,
        patientID
    )
VALUES
    ('A001', '2023-05-01 10:00:00', 'D001', 'P001'),
    ('A002', '2023-05-02 11:00:00', 'D002', 'P002'),
    ('A003', '2023-05-03 12:00:00', 'D003', 'P003');

-- Insert electronic prescription data
INSERT INTO
    ElectronicPrescription (
        prescriptionID,
        doctorID,
        patientID,
        medicationName,
        dosage,
        frequency
    )
VALUES
    (
        'EP001',
        'D001',
        'P001',
        'Lisinopril',
        '10 mg',
        'Once a day'
    ),
    (
        'EP002',
        'D002',
        'P002',
        'Chemotherapy',
        '100 mg',
        'Once a week'
    ),
    (
        'EP003',
        'D003',
        'P003',
        'Zoloft',
        '50 mg',
        'Twice a day'
    );

-- Insert health record data
INSERT INTO
    HealthRecord (
        recordID,
        prescriptionID,
        summary,
        isCured,
        currentStatus
    )
VALUES
    (
        'H001',
        'EP001',
        'High blood pressure',
        1,
        'Closed'
    ),
    ('H002', 'EP002', 'Lung cancer', 0, 'In progress'),
    ('H003', 'EP003', 'Depression', 1, 'Closed');

-- Insert billing data
INSERT INTO
    Billing (
        billID,
        patientID,
        totalAmount,
        amountPaid,
        dueDate,
        currentStatus
    )
VALUES
    ('B001', 'P001', 5000, 2500, '2023-05-10', 'Open'),
    (
        'B002',
        'P002',
        10000,
        5000,
        '2023-05-11',
        'Open'
    ),
    (
        'B003',
        'P003',
        15000,
        15000,
        '2023-05-12',
        'Closed'
    );

-- Insert hospital staff data
INSERT INTO
    HospitalStaff (
        staffID,
        staffName,
        staffType,
        department,
        salary,
        performance
    )
VALUES
    (
        'S001',
        'Jason Lee',
        'Doctor',
        'Cardiology',
        100000,
        90
    ),
    (
        'S002',
        'Mary Smith',
        'Receptionist',
        'General',
        40000,
        85
    ),
    (
        'S003',
        'David Brown',
        'Doctor',
        'Oncology',
        110000,
        95
    );