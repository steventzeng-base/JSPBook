package tw.com.javaworld.CH16;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class RepeatSimpleTag extends SimpleTagSupport {
	 
	private int count = 0;
	private JspFragment fragment;
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public void setFragment(JspFragment fragment) {
		this.fragment = fragment;
	}
	
	public void doTag() throws JspException, IOException {
	
		JspContext ctx = getJspContext();
		JspWriter out = ctx.getOut();
			
		for(int i=0 ; i<count ; i++) {
			fragment.invoke(null);
		}
	}
}