<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - RequestScope1.jsp</title>
</head>
<body>

<h2>Request ½d³ò - request</h2>

<%	
	request.setAttribute("Name","mike");  	
	request.setAttribute("Password","browser");
%>
<jsp:forward page="RequestScope2.jsp"/>

</body>
</html>