package tw.com.javaworld.CH16;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class HelloSimpleTag extends SimpleTagSupport {

    public void doTag() throws JspException, IOException {

        JspWriter out = getJspContext().getOut();
        out.println("Hello Simple Tag");
    }
}
