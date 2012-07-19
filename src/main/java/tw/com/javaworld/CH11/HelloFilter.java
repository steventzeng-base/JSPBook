package tw.com.javaworld.CH11;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

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