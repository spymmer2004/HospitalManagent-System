INSERT INTO
    Recptionist (recptionistID, receptionistName, Salary)
VALUES
    (1, 'John Doe', 3000),
    (2, 'Jane Smith', 3500),
    (3, 'Bob Johnson', 4000);

INSERT INTO
    Patient (patientID, patientName, age, gender)
VALUES
    (1, 'Alice Brown', '25', 'Female'),
    (2, 'Bob Green', '32', 'Male'),
    (3, 'Charlie White', '40', 'Male');

INSERT INTO
    Doctor (doctorID, doctorName, department)
VALUES
    (1, 'Dr. Smith', 'Cardiology'),
    (2, 'Dr. Johnson', 'Oncology'),
    (3, 'Dr. Lee', 'Pediatrics');

INSERT INTO
    Appointment (appointmentID, Appointmentdate, doctorID)
VALUES
    (1, '2023-05-01 10:00:00', 1),
    (2, '2023-05-05 15:30:00', 2),
    (3, '2023-05-10 11:15:00', 3);

INSERT INTO
    ElectronicPrescription (
        prescriptionID,
        patientID,
        doctorID,
        medicationName,
        dosage,
        frequency
    )
VALUES
    (1, 1, 1, 'Lipitor', '20mg', 'Once a day'),
    (2, 2, 2, 'Tamoxifen', '10mg', 'Twice a day'),
    (
        3,
        3,
        3,
        'Amoxicillin',
        '500mg',
        'Three times a day'
    );

INSERT INTO
    HealthRecords (summary, isCured, currentStatus, ID)
VALUES
    (
        'Patient has high cholesterol',
        'No',
        'Ongoing treatment',
        1
    ),
    (
        'Patient has breast cancer',
        'No',
        'Undergoing chemotherapy',
        2
    ),
    (
        'Patient has a bacterial infection',
        'Yes',
        'Recovered',
        3
    );

INSERT INTO
    HospitalStaff (ID, staffName, department, salary, performance)
VALUES
    (1, 'Sarah Johnson', 'Nursing', 4000, 4),
    (2, 'Michael Brown', 'IT', 5000, 5),
    (3, 'Emily Lee', 'Administration', 4500, 3);

INSERT INTO
    Billing (
        billID,
        patientID,
        totalAmount,
        amountPaid,
        dueDate,
        currStatus
    )
VALUES
    (1, 1, 500, 0, '2023-05-15', 'Unpaid'),
    (2, 2, 1000, 1000, '2023-06-01', 'Paid'),
    (3, 3, 750, 0, '2023-05-30', 'Unpaid');