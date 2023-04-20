// So what we will do here is that a particular patient can only view his own health record we wont allow him to see anyone else
import java.sql.*;
import java.util.Scanner;
public class Health_Record_Viewing {
    public static String getHealthRecord(String username, String password) {
        String healthRecord = null;

        // Step 1: Establish a connection to the database
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/patient_records",
                "username",
                "password"
            );

            // Step 2: Validate the patient's login credentials
            String sql = "SELECT * FROM patients WHERE username=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Step 3: Retrieve the patient's health record
                int patientId = rs.getInt("patient_id");
                String healthRecordSql = "SELECT * FROM health_records WHERE patient_id=?";
                PreparedStatement healthStmt = conn.prepareStatement(healthRecordSql);
                healthStmt.setInt(1, patientId);
                ResultSet healthRs = healthStmt.executeQuery();

                if (healthRs.next()) {
                    healthRecord = healthRs.getString("health_record");
                }
            }

            // Step 4: Close the database connection
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return healthRecord;
    }
   
}