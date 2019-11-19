<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <title>CH5 - Page2.jsp</title>
</head>
<body>

<%
	String Name = (String) application.getAttribute("Name");
	String Password = (String) application.getAttribute("Password");
	out.println("Name = "+Name);
	out.println("Password = "+ Password);
%>

</body>
</html>
