<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH7 - Core_if.jsp</title>
</head>
<body>

<h2><c:out value="<c:if> 的用法"/></h2>

<c:if test="${param.username == 'Admin'}" var="condition" scope="page">
    您好Admin先生
</c:if>

執行結果為:${condition}
</body>
</html>
