package tw.com.javaworld.CH11;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

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
