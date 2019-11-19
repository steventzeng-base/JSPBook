<%@ page contentType="text/html;charset=UTF-8" errorPage="Error.jsp" %>

<html>
<head>
  <title>CH4 - ErrorPage.jsp</title>
</head>
<body>

<h2>errorPage 的範例程式</h2>

<%!
	private double toDouble(String value)
	{
		return(Double.valueOf(value).doubleValue());
	}
%>
<%
	double num1 = toDouble(request.getParameter("num1"));
	double num2 = toDouble(request.getParameter("num2"));
%>
您傳入的兩個數字為：<%= num1 %> 和 <%= num2 %><br>
兩數相加為 <%= (num1+num2) %>

</body>
</html>
