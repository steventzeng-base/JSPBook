<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - RequestScope2.jsp</title>
</head>
<body>

<h2>Request 範圍 - request</h2>
<%
    String Name = (String) request.getAttribute("Name");
    String Password = (String) request.getAttribute("Password");
    out.println("Name = " + Name);
    out.println("Password = " + Password);
%>

</body>
</html>
