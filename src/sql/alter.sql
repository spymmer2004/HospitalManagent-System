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

-- Add foreign key constraint to HealthRecord table referencing ElectronicPrescription table
ALTER TABLE
    HealthRecord
ADD
    CONSTRAINT fk_healthrecord_prescription FOREIGN KEY (prescriptionID) REFERENCES Patient(patientID);

-- Add foreign key constraint to Billing table referencing Patient table
ALTER TABLE
    Billing
ADD
    CONSTRAINT fk_billing_patient FOREIGN KEY (patientID) REFERENCES Patient(patientID);

-- Add foreign key constraint for Receptionist table
ALTER TABLE
    Receptionist
ADD
    CONSTRAINT fk_receptionist_hospitalstaff FOREIGN KEY (receptionistID) REFERENCES HospitalStaff(staffID);

-- Add foreign key constraint for Doctor table
ALTER TABLE
    Doctor
ADD
    CONSTRAINT fk_doctor_hospitalstaff FOREIGN KEY (doctorID) REFERENCES HospitalStaff(staffID);