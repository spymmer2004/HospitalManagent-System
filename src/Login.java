import java.sql.*;
import java.util.Scanner;
public class Login {
    
    public static void main(){
        Connection conn = null;
        Scanner sc = new Scanner(System.in);
        String table;
        String user;
        Class.forName("com.mysql.jdbc.Driver");
        
        int login_id; String name;
        System.out.println("Are you a Patient or a Doctor?");
        user = sc.nextLine();
        if(user.equalsIgnoreCase("Patient")){
            table = "Patient";  //We check the patient's table
        }
        else if(user.equalsIgnoreCase("Doctor")){
            table = "Doctor"; //We check the doctor's table
        }
        else{
            System.out.println("Invalid input, Please enter a valid input");
            System.exit(1);
        }
        conn = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase", "username", "password"); 
       // PreparedStatement stmt = conn.prepareStatement(sql1);
        while(true){
            System.out.print("Please enter your login-id:");
        login_id = sc.nextInt();
        //if login_id is invalid we till him to try again/register
        //and if the login_id is valid we proceed to ask the name 
        String sql = "SELECT COUNT(*) FROM Patient WHERE login_id = " + login_id;
        
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        rs.next();
        int count = rs.getInt(1);
        rs.close();
        stmt.close();
        if (count > 0) {
            break;
        } else {
                System.out.println("Invalid login ID.Please try again.");
        }
        }
        System.out.println("Please enter your name");
        name = sc.nextLine();
        String sql = "SELECT * FROM Patient WHERE login_id = " + login_id;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
         if(name == rs.getString(2)){///column index should come inside the brackets
            System.out.println("You have successfully logged into your account");
         }
         else{
            System.out.println("Sorry! Invalid information");
         }



        
         
        

        

    sc.close();
    }
}
