<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH4 - Include_Html.jsp</title>
</head>
<body>

<h2>include 指令 </h2>

<%@ include file="Hello.html" %>
<%
    out.println("歡迎大家進入JSP的世界");
%>

</body>
</html>
