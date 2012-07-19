<%@ page contentType="text/html;charset=big5" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>CH9 - ReplaceAll.jsp</title>
</head>
<body>

<h2>Textarea ½d¨Ò - ¨Ï¥Î replaceAll( )</h2>
<fmt:requestEncoding value="MS950" />

<%
	String msg = request.getParameter("Message");
	String str = msg.replaceAll("\r\n","<br>");
	out.println(str);
%>

</body>
</html>