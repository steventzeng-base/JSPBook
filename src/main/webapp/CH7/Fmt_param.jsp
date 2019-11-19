<%@ page import = "java.util.Date"  %>
<%@ page import = "java.lang.Double"  %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH7 - Fmt_param.jsp</title>
</head>
<body>

<h2>&lt;fmt:param&gt; </h2>

<%
	request.setAttribute("now", new Date());
	request.setAttribute("num", new Double(123.45) );
%>
</br>
<fmt:bundle basename="MyResource">
  <fmt:message key="Str3">
    <fmt:param value="JavaWorld in Taiwan" />
    <fmt:param value="${now}" />
    <fmt:param value="${now}" />
    <fmt:param value="${num}" />
  </fmt:message>
</fmt:bundle>
</body>
</html>
