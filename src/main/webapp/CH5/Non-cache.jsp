<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - Non-cache.jsp</title>
</head>
<body>

<h2>解決瀏覽器 cache 的問題 - response</h2>
<%
    if (request.getProtocol().compareTo("HTTP/1.0") == 0)
        response.setHeader("Pragma", "no-cache");
    else if (request.getProtocol().compareTo("HTTP/1.1") == 0)
        response.setHeader("Cache-Control", "no-cache");

    response.setDateHeader("Expires", 0);
%>

</body>
</html>
