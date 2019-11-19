package tw.com.javaworld.CH11;

import javax.servlet.*;
import java.io.IOException;

public class HelloFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
    }

    public void doFilter(
            ServletRequest request,
            ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        System.out.println("Hello Filter !!");
        chain.doFilter(request, response);
    }

    public void destroy() {
    }
}
