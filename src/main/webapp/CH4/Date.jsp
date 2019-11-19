<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Date" %>

<html>
<head>
  <title>CH4 - Date.jsp</title>
</head>
<body>

<h2>使用 java.util.Date 顯示目前時間</h2>

<%
	Date date = new Date();
	out.println("現在時間："+date);
%>

</body>
</html>
