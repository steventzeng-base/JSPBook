<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <title>CH5 - RequestScope1.jsp</title>
</head>
<body>

<h2>Request 範圍 - request</h2>

<%
	request.setAttribute("Name","mike");
	request.setAttribute("Password","browser");
%>
<jsp:forward page="RequestScope2.jsp"/>

</body>
</html>
