package tw.com.javaworld.CH11;

import javax.servlet.*;
import javax.servlet.http.*;
public class RequestWrapperSample extends HttpServletRequestWrapper {
	
	public RequestWrapperSample(HttpServletRequest request) {
		super(request);
	}
	
	public String getMethod() {
		return "POST";
	}
	
	public String getQueryString() {
		return "www.javaworld.com.tw";
	}
}