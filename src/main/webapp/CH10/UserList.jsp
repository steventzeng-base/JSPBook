<%@ page contentType="text/html;Big5" pageEncoding="Big5"%>
<%@ page import="java.util.*" %>
<%@ page import="tw.com.javaworld.CH10.*" %>

<%!
	// �ѩ�ϥΪ̦W��O�@�ɪ���B�]�w����@instance
	// �G�ŧi�覡�����<jsp:useBean>��tag

	UserList userlist = UserList.getInstance();
%>
<jsp:useBean id="usertrace" class="tw.com.javaworld.CH10.UserTrace" scope="session"/>
<%
	String user_id = request.getParameter("user_id");


	// �]�w�ϥΪ�id�i�J�l�ܪ���
	usertrace.setUserName(user_id);

	// �N�ϥΪ̰l�ܪ���[�Jsession��
	session.setAttribute("usertrace",usertrace);

	// �N�ϥΪ̥[�J�ϥΪ̦W�椤
	userlist.addUser(usertrace.getUserName());

	// �]�wsession�b10���������S�����ʴN��session�L��
	session.setMaxInactiveInterval(10);

%>

<html>
<head>
  <meta http-equiv="refresh" content=60>
  <title>CH10 - UserList.jsp</title>
</head>
<body>

<h2>�u�W�ϥΪ̦W��</h2>

<center>
<p>
<textarea rows="9" cols="15">
<%
	// �N�u�W�ϥΪ̦W��L�X
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