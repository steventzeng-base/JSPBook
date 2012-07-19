package tw.com.javaworld.CH15;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;

public class Hello extends TagSupport {
	
	public int doStartTag() {
		try {
			JspWriter out = pageContext.getOut();
			out.println("Hello World Use Tag Library");
		} catch (Exception e) {
			System.out.println("Hello Tag Error :" + e);
		}
		return (SKIP_BODY);
	}
}