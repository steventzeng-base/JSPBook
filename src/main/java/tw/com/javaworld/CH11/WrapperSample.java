package tw.com.javaworld.CH11;

import javax.servlet.*;
import javax.servlet.http.*;
public class WrapperSample implements Filter {
	
	public void doFilter(
		ServletRequest request,
		ServletResponse response,
		FilterChain chain) {
		try {
			RequestWrapperSample wrapper =
				new RequestWrapperSample((HttpServletRequest) request);
			chain.doFilter(wrapper, response);
		} catch (Exception e) {
		}
	}
	
	public void init(FilterConfig config) throws ServletException {
	}
	
	public void destroy() {
	}
}	