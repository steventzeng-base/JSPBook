<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>

<html>
<head>
    <title>CH5 - Exception.jsp</title>
</head>
<body>

<h2>exception 物件</h2>

Exception：<%= exception %><br>
Message：<%= exception.getMessage() %><br>
Localized Message：<%= exception.getLocalizedMessage() %><br>
Stack Trace：<% exception.printStackTrace(new java.io.PrintWriter(out)); %><br>

</body>
</html>
