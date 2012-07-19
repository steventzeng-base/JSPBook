<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - PageScope2.jsp</title>
</head>
<body>

<h2>Page ½d³ò - pageContext</h2>
<%	
	String Name = (String)pageContext.getAttribute("Name");
	String Password = (String)pageContext.getAttribute("Password");
	out.println("Name = "+Name);
	out.println("Password = "+ Password);
%>

</body>
</html>