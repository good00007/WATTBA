package db;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionManager {
	private static String url = "jdbc:mysql://localhost:3306/";
	private static	String dbName = "the_wich";
	private static String driver = "com.mysql.jdbc.Driver";
	private static String userName = "root";
	private static String password = "2v0b1c8";
	
	
	public static Connection getConnection() {
		
				Connection connection = null;	
		try {
			
			Class.forName(driver).newInstance();
			connection = DriverManager.getConnection(url + dbName, userName, password);

			// Catch all possible exceptions
		} catch(Exception e) {
			e.printStackTrace();
		}

		return connection;
	}
}
