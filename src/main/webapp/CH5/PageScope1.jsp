<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - PageScope1.jsp</title>
</head>
<body>

<h2>Page 範圍 - pageContext</h2>
<%
    pageContext.setAttribute("Name", "mike");
    pageContext.setAttribute("Password", "browser");
%>
<jsp:forward page="PageScope2.jsp"/>

</body>
</html>
