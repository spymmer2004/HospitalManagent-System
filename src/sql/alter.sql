-- Add foreign key constraint to Appointment table referencing Doctor table
ALTER TABLE
    Appointment
ADD
    CONSTRAINT fk_appointment_doctor FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID);

-- Add foreign key constraint to ElectronicPrescription table referencing Patient table
ALTER TABLE
    ElectronicPrescription
ADD
    CONSTRAINT fk_prescription_patient FOREIGN KEY (patientID) REFERENCES Patient(patientID);

-- Add foreign key constraint to ElectronicPrescription table referencing Doctor table
ALTER TABLE
    ElectronicPrescription
ADD
    CONSTRAINT fk_prescription_doctor FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID);

-- Add foreign key constraint to HealthRecords table referencing ElectronicPrescription table
ALTER TABLE
    HealthRecords
ADD
    CONSTRAINT fk_healthrecords_prescription FOREIGN KEY (ID) REFERENCES ElectronicPrescription(prescriptionID);

-- Add foreign key constraint to Billing table referencing Patient table
ALTER TABLE
    Billing
ADD
    CONSTRAINT fk_billing_patient FOREIGN KEY (patientID) REFERENCES Patient(patientID);