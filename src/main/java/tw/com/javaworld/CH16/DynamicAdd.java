package tw.com.javaworld.CH16;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.ArrayList;

public class DynamicAdd extends SimpleTagSupport implements DynamicAttributes {

    private ArrayList keys = new ArrayList();
    private ArrayList values = new ArrayList();

    public void doTag() throws JspException, IOException {

        JspContext ctx = getJspContext();
        JspWriter out = ctx.getOut();

        float num = 0;
        float sum = Float.parseFloat((String) values.get(0));
        out.print(sum);

        for (int i = 1; i < keys.size(); i++) {
            String temp = (String) values.get(i);
            num = Float.parseFloat(temp);
            sum = sum + num;
            out.print(" + " + num);
        }

        out.print(" = " + sum);
        ctx.setAttribute("sum", Float.toString(sum));

    }

    public void setDynamicAttribute(String uri, String name, Object value) throws JspException {
        keys.add(name);
        values.add(value);
    }
}
