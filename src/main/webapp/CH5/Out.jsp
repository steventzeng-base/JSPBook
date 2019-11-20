<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - Out.jsp</title>
</head>
<body>

<h2>javax.servlet.jsp.JspWriter - out 物件</h2>
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
