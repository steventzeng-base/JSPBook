package tw.com.javaworld.CH2;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {

    //Initialize global variables
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    //Process the HTTP Get request
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=Big5");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head><title>CH2 - HelloServlet</title></head>");
        out.println("<body>");
        out.println(" Hello World <br>");
        out.println("大家好");
        out.println("</body>");
        out.println("</html>");

        out.close();
    }

    //Get Servlet information
    public String getServletInfo() {
        return "tw.com.javaworld.CH2.HelloSerlvet Information";
    }
}
