package tw.com.javaworld.CH11;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionChecker implements Filter {
    private ServletContext context;
    private String targetURI;

    public void init(FilterConfig config) throws ServletException {
        context = config.getServletContext();
        targetURI = config.getInitParameter("targetURI");
    }

    public void doFilter(
            ServletRequest request,
            ServletResponse response,
            FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        if (session != null) {
            String passed = (String) session.getAttribute("passed");
            if (passed.equals("true")) {
                chain.doFilter(httpRequest, httpResponse);
                return;
            } else if (passed.equals("passing")) {
                if (new String(httpRequest.getRequestURI())
                        .equals("/JSPBook/LoginChecker")) {
                    chain.doFilter(httpRequest, httpResponse);
                    return;
                }
            } else {
            }

            session.removeAttribute("passed");
        }
        StringBuffer requestURL = httpRequest.getRequestURL();
        String query = httpRequest.getQueryString();
        if (query != null)
            requestURL.append(query);
        httpRequest.setAttribute("originalURI", new String(requestURL));
        httpRequest.getRequestDispatcher(targetURI).forward(httpRequest, httpResponse);
    }

    public void destroy() {
    }
}
