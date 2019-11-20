<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - Page1.jsp</title>
</head>
<body>

</br>
<%
    application.setAttribute("Name", "mike");
    application.setAttribute("Password", "browser");
%>
<jsp:forward page="Page2.jsp"/>

</body>
</html>
