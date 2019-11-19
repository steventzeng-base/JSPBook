package tw.com.javaworld.CH15;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Myfont extends TagSupport {

    private String bgColor = "#FFFFFF"; // 預設值：白色
    private String color = "#000000"; // 字體預設黑色
    private String align = "CENTER"; // 預設居中
    private String fontSize = "3"; // 字體大小預設3
    private String border = "0"; // 表格邊寬預設為0
    private String width = null; // 表格寬度為 null
    private String bordercolor = "#000000"; // 表格邊寬顏色,預設黑色

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
            out.print("<div align=" + align + "><font size=" + fontSize + " color=" + color + "> ");
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
