package tw.com.javaworld.CH15;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Hello_TEI extends TagSupport {

    public int doStartTag() {
        try {
            JspWriter out = pageContext.getOut();
            out.println("Hello World Use Tag Library");
            pageContext.setAttribute("Message", "Use TEI");

        } catch (Exception e) {
            System.out.println("Hello Tag Error :" + e);
        }
        return (SKIP_BODY);
    }
}
