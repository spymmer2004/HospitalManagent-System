-- Add foreign key constraint to link Recptionist table to Appointment table
ALTER TABLE Appointment
ADD CONSTRAINT fk_appointment_receptionist
FOREIGN KEY (doctorID)
REFERENCES Doctor(doctorID);

-- Add foreign key constraint to link Patient table to ElectronicPrescription table
ALTER TABLE ElectronicPrescription
ADD CONSTRAINT fk_prescription_patient
FOREIGN KEY (patientID)
REFERENCES Patient(patientID);

-- Add foreign key constraint to link Doctor table to Appointment table
ALTER TABLE Appointment
ADD CONSTRAINT fk_appointment_doctor
FOREIGN KEY (doctorID)
REFERENCES Doctor(doctorID);

-- Add foreign key constraint to link Doctor table to ElectronicPrescription table
ALTER TABLE ElectronicPrescription
ADD CONSTRAINT fk_prescription_doctor
FOREIGN KEY (doctorID)
REFERENCES Doctor(doctorID);

-- Add foreign key constraint to link ElectronicPrescription table to HealthRecords table
ALTER TABLE HealthRecords
ADD CONSTRAINT fk_healthrecords_patient
FOREIGN KEY (ID)
REFERENCES Patient(patientID);

-- Add foreign key constraint to link Patient table to Billing table
ALTER TABLE Billing
ADD CONSTRAINT fk_billing_patient
FOREIGN KEY (patientID)
REFERENCES Patient(patientID);
