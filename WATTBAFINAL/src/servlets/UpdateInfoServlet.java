package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UpdateUser;
import User.UserDetails;
import User.UserInfoUpdate;

public class UpdateInfoServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userID = request.getParameter("customer_id");
		String newUserEmail = request.getParameter("email");
		String newUserName = request.getParameter("username");
		String newUserAddress = request.getParameter("address");
		String newUserPostal = request.getParameter("postalcode");
		String newUserPhone = request.getParameter("phoneNumber");
		
		
		UserInfoUpdate userUpdate = new UserInfoUpdate(newUserName, newUserEmail,newUserAddress,newUserPostal,newUserPhone,Integer.parseInt(userID));
		//UserDetails userDetails = new UserDetails(newUserAddress, newUserPostal, newUserPhone);
		if (UpdateUser.updateUser(userUpdate)) {
			request.setAttribute("Sucess", "Information Update Sucessful");
			response.sendRedirect("customersettings.jsp");
		 // RequestDispatcher rd=request.getRequestDispatcher("customersettings.jsp");  
		 // rd.forward(request, response); 
		}
		
		out.close();
	}
}