<%@ page  import="javax.servlet.jsp.JspFactory" contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - GetJspVersion.jsp</title>
</head>
<body>

<h2>取得 JSP Container 版本 - JspFactory 物件</h2> 	

<%
	JspFactory factory = JspFactory.getDefaultFactory();
	out.println("JSP v "+ factory.getEngineInfo().getSpecificationVersion());
%>


</body>
</html>