<%@ page contentType="text/html;charset=MS950" errorPage="Error.jsp" %>

<html>
<head>
  <title>CH4 - ErrorPage.jsp</title>
</head>
<body>

<h2>errorPage ���d�ҵ{��</h2>

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
�z�ǤJ����ӼƦr���G<%= num1 %> �M <%= num2 %><br>
��Ƭۥ[�� <%= (num1+num2) %>

</body>
</html>