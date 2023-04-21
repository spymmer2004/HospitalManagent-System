
    import java.sql.*;
    import java.util.Date;
    
    public class Billing {
    
        // Function to create a new billing entry in the database
        public static void createNewBilling(int patientId, double totalAmount, Date dueDate) {
    
            // Step 1: Establish a connection to the database
            try {
                Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/patient_records",
                    "username",
                    "password"
                );
    
                // Step 2: Insert the new billing record
                String sql = "INSERT INTO billing (patient_id, total_amount, amount_paid, due_date, current_status) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setInt(1, patientId);
                stmt.setDouble(2, totalAmount);
                stmt.setDouble(3, 0.0);
                stmt.setDate(4, new java.sql.Date(dueDate.getTime()));
                stmt.setString(5, "unpaid");
                stmt.executeUpdate();
    
                // Step 3: Close the database connection
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    
        // Function to add money to an existing billing record in the database
        public static void addMoneyToBilling(int billId, double amount) {
    
            // Step 1: Establish a connection to the database
            try {
                Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/patient_records",
                    "username",
                    "password"
                );
    
                // Step 2: Retrieve the existing billing record
                String sql = "SELECT * FROM billing WHERE id=?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setInt(1, billId);
                ResultSet rs = stmt.executeQuery();
    
                if (rs.next()) {
                    // Step 3: Update the billing record with the new amount paid
                    double currentAmountPaid = rs.getDouble("amount_paid");
                    double newAmountPaid = currentAmountPaid + amount;
                    double totalAmount = rs.getDouble("total_amount");
                    String currentStatus = rs.getString("current_status");
                    if (newAmountPaid >= totalAmount) {
                        currentStatus = "paid";
                    }
                    sql = "UPDATE billing SET amount_paid=?, current_status=? WHERE id=?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setDouble(1, newAmountPaid);
                    stmt.setString(2, currentStatus);
                    stmt.setInt(3, billId);
                    stmt.executeUpdate();
                }
    
                // Step 4: Close the database connection
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    

