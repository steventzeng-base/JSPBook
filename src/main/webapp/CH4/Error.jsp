<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ page import="java.io.PrintWriter" %>

<html>
<head>
    <title>CH4 - Error.jsp</title>
</head>
<body>

<h2>errorPage 的範例程式</h2>

<p>ErrorPage.jsp 錯誤產生：<I><%= exception %>
</I></p><br>
<pre>
問題如下：<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>

</body>
</html>
