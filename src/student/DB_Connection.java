package student;
import java.sql.*;
public class DB_Connection {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","2857");
			return con;
		}
		catch (Exception e) { 
			System.out.println(e);
			return null;
		}
	}

}
