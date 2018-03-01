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
import User.UserInfo;


public class CreateUserServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// set response type and get post data from jsp form
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		   
      
		String newUserName = request.getParameter("username");
		String newUserEmail = request.getParameter("email");
		String newUserPassword = request.getParameter("userpass");
		String newUserType = request.getParameter("usertype");
		
		UserInfo user = new UserInfo(newUserName, newUserEmail, newUserPassword, newUserType);
		
		if (CreateUser.createNewUser(user)) {
			
		  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
          rd.forward(request,response); 
		}
		
		
		out.close();
	}
}
