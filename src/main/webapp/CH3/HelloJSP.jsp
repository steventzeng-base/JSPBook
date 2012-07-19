<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH3 - HelloJSP.jsp</title>
</head>
<body>

<h2>JSP 將會被轉譯為 Servlet</h2>

<%!
	int k = 0;
%>
<c:out value="Hi" />
<%
	String name = "browser";
	
	out.println("大家好 !!");
%>
<%= name %>

</body>
</html>