<%@ page import = "java.util.Date"  %>
<%@ page import = "java.lang.Double"  %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH7 - Fmt_i18n.jsp</title>
</head>
<body>

<h2>JSTL i18n </h2>

<%
	request.setAttribute("now", new Date());
	request.setAttribute("num", new Double(123.45) );
%>
</br>
<fmt:bundle basename="Resource">
  <fmt:message key="Str">
    <fmt:param value="JavaWorld in Taiwan" />
    <fmt:param value="${now}" />
    <fmt:param value="${now}" />
    <fmt:param value="${num}" />
  </fmt:message>
</fmt:bundle>
</body>
</html>
