<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>CH9 - ReplaceAll.jsp</title>
</head>
<body>

<h2>Textarea 範例 - 使用 replaceAll( )</h2>
<fmt:requestEncoding value="UTF-8"/>

<%
    String msg = request.getParameter("Message");
    String str = msg.replaceAll("\r\n", "<br>");
    out.println(str);
%>

</body>
</html>
