<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - RequestScope2.jsp</title>
</head>
<body>

<h2>Request ½d³ò - request</h2>
<%	
	String Name = (String) request.getAttribute("Name");	
	String Password = (String) request.getAttribute("Password");	
	out.println("Name = "+Name);	
	out.println("Password = "+ Password);	
%>

</body>
</html>