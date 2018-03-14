package servlets;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CreateUser;
import User.UserDetails;
import User.UserInfo;


public class CreateUserServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		   
      
		String newUserName = request.getParameter("username");
		String newUserEmail = request.getParameter("email");
		String newUserPassword = request.getParameter("userpass");
		String newUserAddress = request.getParameter("address");
		String newUserPostal = request.getParameter("postalcode");
		String newUserPhone = request.getParameter("phoneNumber");
		
		
		UserInfo user = new UserInfo(newUserName, newUserEmail, newUserPassword);
		UserDetails userDetails = new UserDetails(newUserAddress, newUserPostal, newUserPhone);
		if (CreateUser.createNewUser(user,userDetails)) {
			response.sendRedirect("home.jsp");
		 // RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
          //rd.forward(request,response); 
		}else{
			//request.setAttribute("errorMessage", "Error. Email already exist. Please try again");
			//response.sendRedirect("home.jsp"); 
	        // rd.include(request,response); 
			//RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
	        // rd.include(request,response); 
	         response.sendRedirect("home.jsp");
		}
		
		
		out.close();
	}
}
