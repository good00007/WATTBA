package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import User.UserDetails;
import User.UserInfoUpdate;
import db.ConnectionManager;

public class UpdateUser {
	
	public static boolean updateUser(UserInfoUpdate updateUser) { 
		boolean status = false;				
		Connection conn = null;					
		PreparedStatement updateCustomer = null;	
		//PreparedStatement updateCustomerDetails = null;
		PreparedStatement emailCheck = null;
		int queeryresult = 0;	    
		int queeryresult2 = 0;	
		
		try {
			conn = ConnectionManager.getConnection();
			 String updateCustomerInfo = "Update customer SET email=?, " + "name=?" + " WHERE customer.customer_id=?";
		    updateCustomer = conn.prepareStatement(updateCustomerInfo);
		    updateCustomer.setString(1, updateUser.getEmailAddress());      
		    updateCustomer.setString(2, updateUser.getUsername());   
		    updateCustomer.setString(3, Integer.toString(updateUser.getID()));   
			
		
			queeryresult = updateCustomer.executeUpdate();
			
			
	      // updateCustomerDetails = conn.prepareStatement("Update customer_detail INNER JOIN customer ON customer_detail.customer_id = customer.customer_id SET (`address`,`postal_code`,`phone_number`)" + "VALUES ('" + updateUser.getAddress() + "','" 
	    		//	+ updateUser.getPostalCode() + "','" + updateUser.getPhoneNumber() + "','" + userDetails.getPhoneNumber()  + "') WHERE customer.customer_id=" + "VALUES ('" updateUser.getID()  + "');

	       String updateCustomerDetails = "Update customer_detail INNER JOIN customer ON customer_detail.customer_id = customer.customer_id SET address=?, " + "postal_code=?, " + "phone_number=?" + " WHERE customer.customer_id=?";
	       PreparedStatement pst = conn.prepareStatement(updateCustomerDetails);
           pst.setString(1, updateUser.getAddress());      
           pst.setString(2, updateUser.getPostalCode());   
           pst.setString(3, updateUser.getPhoneNumber());   
           pst.setString(4, Integer.toString(updateUser.getID()));   
			
	    			queeryresult2 = pst.executeUpdate();
			
			if(queeryresult == 1 && queeryresult2 == 1) {
				status = true;
			}
			// Quest not completed yet
				

		
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
			if (updateCustomer != null) {
				try {
					updateCustomer.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return status;
	}
}



