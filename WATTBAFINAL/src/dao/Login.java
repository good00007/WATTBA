package dao;


import User.UserInfo;
import User.AdminInfo;
import db.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Login {


	public static boolean validateLogin(UserInfo user) { 

		boolean status = false;		

		Connection conn = null;				
		PreparedStatement getusers = null;	
		PreparedStatement activeCheck = null;
		ResultSet resultSet = null;			
		


		try {
			conn = ConnectionManager.getConnection();
			activeCheck = conn.prepareStatement("select is_active from customer where email=?");
			activeCheck.setString(1, user.getEmailAddress());
			ResultSet rs1 = activeCheck.executeQuery();
				while(rs1.next())
					if(rs1.getInt(1)== 0){
				return false;
					
			} else {
				
			
			
			getusers = conn.prepareStatement("select email, password, name from customer where email=? and password=?");
			getusers.setString(1, user.getEmailAddress());
			getusers.setString(2, user.getPassword());
			resultSet = getusers.executeQuery();
			status = resultSet.next();

			if(status) {
				user.setEmail(resultSet.getString(1));

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


	public static boolean validateAdminLogin(AdminInfo admin){
		Connection conn2 = null;				

		PreparedStatement getadmin = null;	
		boolean status = false;	
		ResultSet resultSet2 = null;
		try {
			conn2 = ConnectionManager.getConnection();

			getadmin = conn2.prepareStatement("select name, password from admin where name=? and password=?");
			getadmin.setString(1, admin.getUsername());
			getadmin.setString(2, admin.getPassword());
			resultSet2 = getadmin.executeQuery();
			status = resultSet2.next();


			if(status) {
				admin.setEmail(resultSet2.getString(1));
			}
			
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				if (conn2 != null) {
					try {
						conn2.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				if (getadmin != null) {
					try {
						getadmin.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}

				}
				if (resultSet2 != null) {
					try {
						resultSet2.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		
			return status;
		
		}
	}