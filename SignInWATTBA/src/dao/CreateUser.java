package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import User.UserInfo;
import db.ConnectionManager;

public class CreateUser{

	public static boolean createNewUser(UserInfo newUser) { 
		boolean status = false;					// Status of createNewUser
		Connection conn = null;					// DB Connection
		PreparedStatement insertUser = null;	// # of executed queries
		int queeryresult = 0;	    

		// Connect to Database and execute INSERT query with UserBean data
		try {
			conn = ConnectionManager.getConnection();
			insertUser = conn.prepareStatement("INSERT INTO login (`user`,`password`,`email`,`userType`)" + "VALUES (' " + newUser.getUsername() + "','" 
			+ newUser.getPassword() + "','" + newUser.getEmailAddress() + "','" +  newUser.getUserType() + "'); ");
			//insertUser = conn.prepareStatement("INSERT INTO login (`user`,`password`,`email`,`userType`)" + "VALUES ('Jonhson', 'Mr.', 'Springfield', 2001)");
			
			
			queeryresult = insertUser.executeUpdate();

			// Return true if 1 query executes
			if(queeryresult == 1) {
				status = true;
			}

			// Catch all possible Exceptions
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (insertUser != null) {
				try {
					insertUser.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return status;
	}

}

