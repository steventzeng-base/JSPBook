<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <title>CH5 - Login.jsp</title>
</head>
<body>

<h2>javax.servlet.http.HttpSession - session 物件</h2>
<form action=Login.jsp method="POST" >
Login Name: <input type="text" name="Name"><br>
Login Password: <input type="text" name="Password" ><br>
<input type="submit" value="Send"><br>
</form>

<%	if (request.getParameter("Name") != null && request.getParameter("Password") != null) {
		String Name = request.getParameter("Name");
		String Password = request.getParameter("Password");

		if (Name.equals("mike") && Password.equals("1234")) {
			session.setAttribute("Login", "OK");
			response.sendRedirect("Member.jsp");
		}
		else {
			out.println("登入錯誤，請輸入正確名稱");
		}
	}
%>

</body>
</html>
