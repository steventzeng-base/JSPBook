<%@ page contentType="text/html;UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="tw.com.javaworld.CH10.*" %>

<%!
	// 由於使用者名單是共享物件且設定為單一instance
	// 故宣告方式不能用<jsp:useBean>的tag

	UserList userlist = UserList.getInstance();
%>
<jsp:useBean id="usertrace" class="tw.com.javaworld.CH10.UserTrace" scope="session"/>
<%
	String user_id = request.getParameter("user_id");


	// 設定使用者id進入追蹤物件中
	usertrace.setUserName(user_id);

	// 將使用者追蹤物件加入session內
	session.setAttribute("usertrace",usertrace);

	// 將使用者加入使用者名單中
	userlist.addUser(usertrace.getUserName());

	// 設定session在10秒鐘之內沒有活動就使session無效
	session.setMaxInactiveInterval(10);

%>

<html>
<head>
  <meta http-equiv="refresh" content=60>
  <title>CH10 - UserList.jsp</title>
</head>
<body>

<h2>線上使用者名單</h2>

<center>
<p>
<textarea rows="9" cols="15">
<%
	// 將線上使用者名單印出
	Enumeration elements = userlist.getList();

	while(elements.hasMoreElements())
	{
		String name = (String)elements.nextElement();
		out.println(name);
	}
%>
</textarea>
</p>
</center>
</body>
</html>
