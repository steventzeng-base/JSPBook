package tw.com.javaworld.CH19;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Model2Hello extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
			
		response.setContentType("text/html");
		String Message = "Hello World";
		String jsp = "/CH19/Model2Hello.jsp";
		request.setAttribute("message", Message);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(jsp);
		rd.forward(request, response);
	}

	public void destroy() {
	}
}