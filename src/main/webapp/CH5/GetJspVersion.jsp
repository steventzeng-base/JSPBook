<%@ page  import="javax.servlet.jsp.JspFactory" contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - GetJspVersion.jsp</title>
</head>
<body>

<h2>���o JSP Container ���� - JspFactory ����</h2> 	

<%
	JspFactory factory = JspFactory.getDefaultFactory();
	out.println("JSP v "+ factory.getEngineInfo().getSpecificationVersion());
%>


</body>
</html>