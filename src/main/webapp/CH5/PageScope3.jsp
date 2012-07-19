<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - PageScope3.jsp</title>
</head>
<body>

<h2>Page ½d³ò - pageContext</h2>
<%	
	pageContext.setAttribute("Name","mike");  	
	pageContext.setAttribute("Password","browser");
	
	String Name = (String)pageContext.getAttribute("Name");	
	String Password = (String)pageContext.getAttribute("Password");	
	
	out.println("Name = "+Name);	
	out.println("Password = "+ Password);
%>

</body>
</html>