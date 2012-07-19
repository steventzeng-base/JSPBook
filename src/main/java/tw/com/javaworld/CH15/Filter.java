package tw.com.javaworld.CH15;

import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class Filter extends BodyTagSupport {

	public Filter() {
	}
	
	public int doAfterBody() {

		// 取得 body content 物件    
		BodyContent bc = getBodyContent();

		// 取得 request 物件    
		ServletRequest request = pageContext.getRequest();

		// 若得到 Filter 參數值為 Filter 時，將 body content 的內容傳入至 filter()    
		// 否則，直接顯示原始資始內容  
		
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

	//  主要將字串的內容中有以下特殊符號：< 、 > 、 " 、 &  
	//  分別代替為 &lt; 、 &gt; 、 &quot; 、 &amp;   
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