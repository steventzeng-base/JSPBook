package tw.com.javaworld.CH15;

import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class Filter extends BodyTagSupport {

	public Filter() {
	}
	
	public int doAfterBody() {

		// ���o body content ����    
		BodyContent bc = getBodyContent();

		// ���o request ����    
		ServletRequest request = pageContext.getRequest();

		// �Y�o�� Filter �ѼƭȬ� Filter �ɡA�N body content �����e�ǤJ�� filter()    
		// �_�h�A������ܭ�l��l���e  
		
		String filter;  

		if (request.getParameter("Filter") != null
			&& request.getParameter("Filter").equals("Filter")) {
			
			filter = toFilter(bc.getString());
		} else {
			filter = bc.getString();
		}
		try {
			JspWriter out = bc.getEnclosingWriter();
			out.print(filter);
		} catch (Exception e) {
			System.out.println("Error in FilterTag: " + e);
		}
		return (SKIP_BODY);
	}

	//  �D�n�N�r�ꪺ���e�����H�U�S��Ÿ��G< �B > �B " �B &  
	//  ���O�N���� &lt; �B &gt; �B &quot; �B &amp;   
	public String toFilter(String input) {
		StringBuffer filtered = new StringBuffer(input.length());
		char c;
		for (int i = 0; i < input.length(); i++) {
			c = input.charAt(i);
			if (c == '<') {
				filtered.append("&lt;");
			} else if (c == '>') {
				filtered.append("&gt;");
			} else if (c == '"') {
				filtered.append("&quot;");
			} else if (c == '&') {
				filtered.append("&amp;");
			} else {
				filtered.append(c);
			}
		}
		return (filtered.toString());
	}
}