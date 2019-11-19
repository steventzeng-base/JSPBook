package tw.com.javaworld.CH11;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginChecker extends HttpServlet {

    protected void doPost(
            HttpServletRequest httpRequest,
            HttpServletResponse httpResponse) throws IOException, ServletException {

        String userId = httpRequest.getParameter("userId");
        String password = httpRequest.getParameter("password");
        String targetURI = httpRequest.getParameter("originalURI");

        if ((!userId.equals("admin")) || (!password.equals("1234"))) {
            throw new ServletException("認證失敗");
        }

        HttpSession session = httpRequest.getSession();
        session.setAttribute("passed", "true");
        httpResponse.sendRedirect(targetURI);
    }
}
