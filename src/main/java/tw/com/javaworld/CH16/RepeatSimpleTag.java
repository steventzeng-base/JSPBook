package tw.com.javaworld.CH16;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

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

        for (int i = 0; i < count; i++) {
            fragment.invoke(null);
        }
    }
}
