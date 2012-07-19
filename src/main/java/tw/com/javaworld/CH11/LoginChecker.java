package tw.com.javaworld.CH11;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginChecker extends HttpServlet {
	
	protected void doPost(
		HttpServletRequest httpRequest,
		HttpServletResponse httpResponse) throws IOException, ServletException {
		
		String userId = httpRequest.getParameter("userId");
		String password = httpRequest.getParameter("password");
		String targetURI = httpRequest.getParameter("originalURI");
		
		if ((!userId.equals("admin")) || (!password.equals("1234"))) {
			throw new ServletException("ª{√“•¢±—");
		}
		
		HttpSession session = httpRequest.getSession();
		session.setAttribute("passed", "true");
		httpResponse.sendRedirect(targetURI);
	}
}