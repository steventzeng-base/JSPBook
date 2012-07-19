<%@ page contentType="text/html;charset=Big5" isErrorPage="true" %>

<html>
<head>
  <title>CH5 - Exception.jsp</title>
</head>
<body>

<h2>exception ª«¥ó</h2> 	

Exception¡G<%= exception %><br>
Message¡G<%= exception.getMessage() %><br>
Localized Message¡G<%= exception.getLocalizedMessage() %><br>
Stack Trace¡G<% exception.printStackTrace(new java.io.PrintWriter(out)); %><br>

</body>
</html>