<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH7 - Core_forEach.jsp</title>
</head>
<body>

<h2><c:out value="<c:forEach> 的用法"/></h2>

<%
    String[] atts = new String[5];
    atts[0] = "hello";
    atts[1] = "this";
    atts[2] = "is";
    atts[3] = "a";
    atts[4] = "pen";
    request.setAttribute("atts", atts);
%>

<c:forEach items="${atts}" var="item">
    ${item}</br>
</c:forEach>

</body>
</html>
