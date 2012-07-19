package tw.com.javaworld.CH15;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class Myfont extends TagSupport {

	private String bgColor = "#FFFFFF"; // �w�]�ȡG�զ�  
	private String color = "#000000"; // �r��w�]�¦�  
	private String align = "CENTER"; // �w�]�~��  
	private String fontSize = "3"; // �r��j�p�w�]3  
	private String border = "0"; // �����e�w�]��0  
	private String width = null; // ���e�׬� null  
	private String bordercolor = "#000000"; // �����e�C��,�w�]�¦�  

	public void setBgColor(String newBgColor) {
		bgColor = newBgColor;
	}
	public void setColor(String newColor) {
		color = newColor;
	}
	public void setAlign(String newAlign) {
		align = newAlign;
	}
	public void setFontSize(String newFontSize) {
		fontSize = newFontSize;
	}
	public void setBorder(String newBorder) {
		border = newBorder;
	}
	public void setWidth(String newWidth) {
		width = newWidth;
	}
	public void setBordercolor(String newBordercolor) {
		bordercolor = newBordercolor;
	}
	
	public int doStartTag() {
		try {
			JspWriter out = pageContext.getOut();
			out.print("<table border=" + border + " bordercolor=" + bordercolor);
			if (width != null) {
				out.print(" WIDTH=\"" + width + "\" >");
			}
			out.print("><TD bgcolor=" + bgColor + ">");
			out.print("<div align="	+ align + "><font size=" + fontSize + " color=" + color	+ "> ");
		} catch (Exception e) {
			System.out.println("Error in doStartTag of Myfont Handler Class: " + e);
		}
		return (EVAL_BODY_INCLUDE); 
	}
	
	public int doEndTag() {
		try {
			JspWriter out = pageContext.getOut();
			out.print("</td></tr></table>");
		} catch (Exception e) {
			System.out.println("Error in doEndTag of Myfont Handler Class: " + e);
		}
		return (EVAL_PAGE);
		
	}
}