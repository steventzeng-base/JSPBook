<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - Out.jsp</title>
</head>
<body>

<h2>javax.servlet.jsp.JspWriter - out ����</h2>
<%
	int BufferSize = out.getBufferSize();
	int Available = out.getRemaining();	
	int Used = BufferSize - Available;
%>
BufferSize : <%= BufferSize %><br>
Available : <%= Available %><br>
Used : <%= Used %><br>

</body>
</html>