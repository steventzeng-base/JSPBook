<%@ page contentType="text/html;charset=MS950" isErrorPage="true" %>
<%@ page import="java.io.PrintWriter" %>

<html>
<head>
  <title>CH4 - Error.jsp</title>
</head>
<body>

<h2>errorPage ���d�ҵ{��</h2>

<p>ErrorPage.jsp ���~���͡G<I><%= exception %></I></p><br>
<pre>
���D�p�U�G<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>

</body>
</html>