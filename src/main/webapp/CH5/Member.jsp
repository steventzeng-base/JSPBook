<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - Member.jsp</title>
</head>
<body>

<h2>javax.servlet.http.HttpSession - session ����</h2> 	
<%	
	String Login = (String)session.getAttribute("Login");
	
	if (Login != null && Login.equals("OK")) {		
		out.println("�w��i�J");
		session.invalidate();	
	}	
	else {		
		out.println("�Х��n�J����")	;
		out.println("<br>�g�L������A�����|�۰ʤϦ^Login.jsp");
		
		response.setHeader("Refresh","5;URL=Login.jsp");	
	}
%>

</body>
</html>