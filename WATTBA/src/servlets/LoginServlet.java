package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import User.UserInfo;
import User.AdminInfo;
import dao.Login;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();        
		String loginEmail = request.getParameter("email");  
		String loginPass = request.getParameter("password");
		//String loginUser = request.getParameter("username");
		AdminInfo admin = new AdminInfo(loginEmail, loginPass);
		UserInfo user = new UserInfo(loginEmail, loginPass);
		//  AdminInfo admin = new AdminInfo(loginEmail, loginPass);

		if(Login.validateLogin(user)) {

			HttpSession session = request.getSession(false);
			if(session!=null) {

				session.setAttribute("signedIn", true);
				String jsp = null;
				
				session.setAttribute("email", loginEmail);
				jsp = "customerhome.jsp";
	            
            	response.sendRedirect(jsp);
				
			}            
		}
		else if(Login.validateAdminLogin(admin)){
			HttpSession session = request.getSession(false);
			if(session!=null) {

				session.setAttribute("signedIn", true);
				String jsp = null;
				//if(user.getEmailAddress() != null){
				session.setAttribute("email", loginEmail);
				jsp = "adminhome.jsp";
	            
            	response.sendRedirect(jsp);


			}
		
			 
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");  
				rd.forward(request, response); 
			 
		}  
out.close(); 
	}
}


