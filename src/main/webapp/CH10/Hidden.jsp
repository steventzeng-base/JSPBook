<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH10 - Hidden.jsp</title>
</head>
<body>

<h2>從 Hidden.html 接收到隱藏欄位的資料</h2>

name：<font color="red">${param.name}</font><br>
number：<font color="red">${param.number}</font>

<br><a href="/JSPBook/CH7/HelloJSTL.jsp" >Click here</a>

<c:url value="/CH7/HelloJSTL.jsp" var="myUrl">
  <c:param name="name" value="111" />
</c:url>

<br><a href='<c:out value="${myUrl}" />'>Click here</a>

<br><a href='<%= response.encodeURL("/JSPBook/CH7/HelloJSTL.jsp") %>'>Click here</a>

</body>
</html>
