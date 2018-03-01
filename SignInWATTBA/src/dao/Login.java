package dao;


import User.UserInfo;
import db.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Login {

	
	public static boolean validateUserLogin(UserInfo user) { 
		
		boolean status = false;				// query status
	    Connection conn = null;				// DB connection
	    PreparedStatement getusers = null;	// SQL query
	    ResultSet resultSet = null;			// returned query result set
	
	    // Connect to Database and execute SELECT query with UserBean data
	    try {
	        conn = ConnectionManager.getConnection();
	        getusers = conn.prepareStatement("select user, userType, email, password from login where email=? and password=?");
	        getusers.setString(1, user.getEmailAddress());
	        getusers.setString(2, user.getPassword());
	        resultSet = getusers.executeQuery();
	        status = resultSet.next();
	        
	        // if status is true set username and usertype
	        if(status) {
	        	user.setUsername(resultSet.getString(1));
	        	user.setUserType(resultSet.getString(2));
	        }
	        
	    // handle all possible exceptions
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
	        if (getusers != null) {
	            try {
	            	getusers.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if (resultSet != null) {
	            try {
	            	resultSet.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return status;
	}
}
