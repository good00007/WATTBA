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
		PreparedStatement emailCheck = null;
		PreparedStatement deleteBadUser = null;
		int queeryresult = 0;	    
		int queeryresult2 = 0;	
		int emailcheckQ = 0;
		int customerId = 0;
		String customerEmail = null;
		try {
			conn = ConnectionManager.getConnection();
			emailCheck = conn.prepareStatement("select email from customer where email=?");
			//emailCheck = emailCheck.executeUpdate();
			emailCheck.setString(1, newUser.getEmailAddress());
			ResultSet rs1 = emailCheck.executeQuery();

			if (rs1.next()) {
				status = false;
			} else {


				insertUser = conn.prepareStatement("INSERT INTO customer (`email`,`password`,`name`,`is_deleted`)" + "VALUES ('" + newUser.getEmailAddress() + "','" 
						+ newUser.getPassword() + "','" + newUser.getUsername()  + "','" + "1" + "'); ",Statement.RETURN_GENERATED_KEYS);

				queeryresult = insertUser.executeUpdate();

				ResultSet rs2 = insertUser.getGeneratedKeys();


				while(rs2.next()){
					customerId=rs2.getInt(1);

				}
			

					insertUserDetails = conn.prepareStatement("INSERT INTO customer_detail (`customer_id`,`address`,`postal_code`,`phone_number`)" + "VALUES ('" + customerId + "','" 
							+ userDetails.getAddress() + "','" + userDetails.getpostalCode() + "','" + userDetails.getphoneNumber()  + "'); ");


					queeryresult2 = insertUserDetails.executeUpdate();

					if(queeryresult == 1 && queeryresult2 == 1) {
						status = true;

					}else{
					
						status = false;


					}
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
			if (insertUserDetails != null) {
				try {
					insertUserDetails.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return status;
	}

}

