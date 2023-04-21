import java.util.Scanner;
import java.sql.*;

public class Register {
    public static void main(){
        // Prepare a parameterized SELECT query
        Scanner sc=new Scanner(System.in);
        System.out.println("Please give us your UserID: ");
        String userId=sc.next();
        System.out.println("Please give us your password : ");
        String password=sc.next();
        String sql = "SELECT * FROM patients WHERE user_id = ? AND password = ?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

try (// Connect to the database
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase", "username", "password")) {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, userId);
            stmt.setString(2, password);
            
            // Execute the query and get the result set
            ResultSet rs = stmt.executeQuery();

            // Check if the user ID and password exist in the patients table
            if (rs.next()) {
                System.out.println("User ID and password exist in the patients table, Now you can go and login");
                // we use the login class

            } else {
                sql = "INSERT INTO patients_login (username, password) VALUES (?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, userId);
                stmt.setString(2, password);
                stmt.executeUpdate();
                System.out.println("Please give us your name: ");
                String name=sc.next();
                System.out.println("Please give us your age: ");
                Integer age=sc.nextInt();
                System.out.println("Please give us your gender: ");
                String gender=sc.next();

                sql = "INSERT INTO patients (patientID, patientName , age, gender) VALUES (?, ?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, userId);
                stmt.setString(2, name);
                stmt.setInt(3, age);
                stmt.setString(4, gender);

                stmt.executeUpdate();
                System.out.println("User ID and password have been registered");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace(); 
        }

    }
}
