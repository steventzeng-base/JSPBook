<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH10 - SessionCounter.jsp</title>
</head>
<body>

<h2>�����ϥΪ̨쯸����</h2>

<c:set var="time" value="${sessionScope.time}" />

<c:choose>
  <c:when test="${ time != NULL }">
  	<c:set var="time" value="${time + 1}" scope="session" />
  	�w����{����<br>
  	�A�O�� ${sessionScope.time} �����{����<br>
  </c:when>
  <c:otherwise>
  	<c:set var="time" value="1" scope="session" />
  	�w����{����<br>
  	�A�O�� ${sessionScope.time} �����{����<br>
  </c:otherwise>
</c:choose>

</body>
</html>
