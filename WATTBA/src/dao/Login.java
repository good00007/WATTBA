package dao;


import User.UserInfo;
import db.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Login {

	
	public static boolean validateUserLogin(UserInfo user) { 
		
		boolean status = false;				
	    Connection conn = null;				
	    PreparedStatement getusers = null;	
	    ResultSet resultSet = null;			
	
	   
	    try {
	        conn = ConnectionManager.getConnection();
	        getusers = conn.prepareStatement("select email, password, name from customer where email=? and password=?");
	        getusers.setString(1, user.getEmailAddress());
	        getusers.setString(2, user.getPassword());
	        resultSet = getusers.executeQuery();
	        status = resultSet.next();
	        
	       
	        if(status) {
	        	user.setUsername(resultSet.getString(1));
	        
	        }
	        
	   //exceptions
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
