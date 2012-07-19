<%@ page import="java.util.Enumeration" contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - PageContext.jsp</title>
</head>
<body>

<h2>javax.servlet.jsp.PageContext - pageContext ª«¥ó</h2> 	

<%	
	Enumeration enum = pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE );		
	while (enum.hasMoreElements())	
	{
		out.println("application attribute¡G"+enum.nextElement( ) +"<br>");	
	}
%>

</body>
</html>