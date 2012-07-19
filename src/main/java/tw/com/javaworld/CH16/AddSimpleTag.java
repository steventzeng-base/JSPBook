package tw.com.javaworld.CH16;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class AddSimpleTag extends SimpleTagSupport {
	
	private int num1 = 0; 
	private int num2 = 0;
	
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	
	public void doTag() throws JspException, IOException {

		JspContext ctx = getJspContext();
		JspWriter out = ctx.getOut();
			
		int sum = num1 + num2;
		ctx.setAttribute("sum", Integer.toString(sum));
		
		out.println(num1 + " + " + num2 + " = " + sum);
	}
}