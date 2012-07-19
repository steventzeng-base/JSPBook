package tw.com.javaworld.CH16;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class HelloSimpleTag extends SimpleTagSupport {
	
	public void doTag() throws JspException, IOException {
		
		JspWriter out = getJspContext().getOut();
		out.println("Hello Simple Tag");
	}
}