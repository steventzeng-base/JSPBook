<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH7 - Core_if.jsp</title>
</head>
<body>

<h2><c:out value="<c:if> ���Ϊk" /></h2>

<c:if test="${param.username == 'Admin'}" var="condition" scope="page">
�z�nAdmin����
</c:if></br>

���浲�G��:${condition}
</body>
</html>
