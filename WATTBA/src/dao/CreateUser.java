package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import User.UserDetails;
import User.UserInfo;
import db.ConnectionManager;

public class CreateUser{

	public static boolean createNewUser(UserInfo newUser,UserDetails userDetails) { 
		boolean status = false;				
		Connection conn = null;					
		PreparedStatement insertUser = null;	
		PreparedStatement insertUserDetails = null;
	
		int queeryresult = 0;	    
		int queeryresult2 = 0;	
		int customerId = 0;
		try {
			conn = ConnectionManager.getConnection();
			insertUser = conn.prepareStatement("INSERT INTO customer (`email`,`password`,`name`,`is_deleted`)" + "VALUES ('" + newUser.getEmailAddress() + "','" 
			+ newUser.getPassword() + "','" + newUser.getUsername()  + "','" + '1' + "'); ",Statement.RETURN_GENERATED_KEYS);
		
			queeryresult = insertUser.executeUpdate();
			
			ResultSet rs = insertUser.getGeneratedKeys();
			
		
	       while(rs.next()){
	      	customerId=rs.getInt(1);

	          }
			
			insertUserDetails = conn.prepareStatement("INSERT INTO customer_detail (`customer_id`,`address`,`postal_code`,`phone_number`)" + "VALUES ('" + customerId + "','" 
					+ userDetails.getAddress() + "','" + userDetails.getpostalCode() + "','" + userDetails.getphoneNumber()  + "'); ");
			
			
			queeryresult2 = insertUserDetails.executeUpdate();
			
			if(queeryresult == 1 && queeryresult2 == 1) {
				status = true;
			}

		
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

