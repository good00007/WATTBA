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
	
	//private static final String admin = "Administrator";
	//private static final String user = "User";
	
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
		
		// If any parameter is null
		//if (newUserName == null || newUserEmail == null || newUserPassword == null || newUserType == null) {
			//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		//rd.forward(request, response);
	//	}

		// Get user type
		//String ut = null;
		//if (newUserType.equals(admin))
	//		ut = admin;
	//	if (newUserType.equals(user))
	//		ut = user;
	//	
	

		// If createNewUser method returns true
	//	if (CreateUser.createNewUser(user)) {
			// Get session and login newly created user
		//	HttpSession session = request.getSession();
		////	if (session != null) {
				// Set up user cookie
				
				// Get userType homepage
			//	String jsp = null;
			//	if (user.getUserType().equals("User")) {
			//		jsp = "welcome.jsp";
			//	} 
			//	
				// redirect to home page
			//	session.setAttribute("userType", jsp);
            //    response.sendRedirect(jsp);
                
			//}
		//}
		out.close();
	}
}
