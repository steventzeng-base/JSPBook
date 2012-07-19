package tw.com.javaworld.CH2;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Sayhi extends HttpServlet {
	
	//Initialize global variables  
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}
	
	//Process the HTTP Get request  
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		response.setContentType("text/html;charset=Big5");	
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("Big5");
		String Name = request.getParameter("Name");
		
		out.println("<html>");
		out.println("<head><title>CH2 - Sayhi</title></head>");
		out.println("<body>");
		out.println("Hi¡G"+Name);
		out.println("</body>");
		out.println("</html>");
		out.close();
	} 
	
	//Get Servlet information 
	public String getServletInfo() {
		return "tw.com.javaworld.CH2.Sayhi Information";
	}
	
	public void destroy() {
	}
}