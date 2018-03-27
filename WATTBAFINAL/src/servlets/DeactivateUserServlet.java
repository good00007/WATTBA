package servlets;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DeactivateUser;
import User.UserDetails;
import User.UserInfo;

public class DeactivateUserServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 
		 HttpSession session = request.getSession(true);
		
		String UserEmail = request.getParameter("email");
		UserInfo user = new UserInfo(UserEmail);
		if (DeactivateUser.deativateUser(user)) {
			
			String jsp1 = null;
			jsp1 = "edituser.jsp";
			response.sendRedirect(jsp1);
			 // RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
	          //rd.forward(request,response); 
		//	response.setAttribute("creation", success);
			
		}
		
		
		
		
		out.close();
	}
}
