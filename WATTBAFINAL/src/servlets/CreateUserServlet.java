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
		 
		 HttpSession session = request.getSession(true);
		String newUserName = request.getParameter("username");
		String newUserEmail = request.getParameter("email");
		String newUserPassword = request.getParameter("userpass");
		String newUserAddress = request.getParameter("address");
		String newUserPostal = request.getParameter("postalcode");
		String newUserPhone = request.getParameter("phoneNumber");
		String fail = "failed";
		String success = "success";
		UserInfo user = new UserInfo(newUserName, newUserEmail, newUserPassword);
		UserDetails userDetails = new UserDetails(newUserAddress, newUserPostal, newUserPhone);
		if (CreateUser.createNewUser(user,userDetails)) {
			session.setAttribute("creation", success);
			String jsp1 = null;
			jsp1 = "login.jsp";
			response.sendRedirect(jsp1);
			 // RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
	          //rd.forward(request,response); 
		//	response.setAttribute("creation", success);
			
			}else{
				session.setAttribute("creation", fail);
				String jsp = null;
				jsp = "login.jsp";
	            
            	response.sendRedirect(jsp);
		        
			}
		
		
		
		
		out.close();
	}
}
