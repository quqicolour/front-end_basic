package comm.dhee.vendition.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	public static Connection getConnection() {
		
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "dhee", "dhee");
			
			conn.setAutoCommit(false);
			
		} catch (ClassNotFoundException  | SQLException e) {
			
			throw new RuntimeException(e);
		} 
		
		return conn;
	}
	
	public static void closeConnection(Connection conn)	{
		try {
			conn.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
