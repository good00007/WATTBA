package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import User.UserInfo;
import db.ConnectionManager;

public class DeactivateUser {

	public static boolean deativateUser(UserInfo user){
		
		Connection conn = null;					
		PreparedStatement userDeactive = null;	
		

		try {
			conn = ConnectionManager.getConnection();
			 String updateCustomerInfo = "UPDATE customer SET is_active = 0 WHERE email =?";
			 userDeactive = conn.prepareStatement(updateCustomerInfo);
			 userDeactive.setString(1, user.getEmailAddress());      
		

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
			if (userDeactive != null) {
				try {
					userDeactive.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
		return false;

		
	
	}
	
	
}
