<%@ page import = "java.util.Date"  %>
<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH7 - Fmt_setLocale.jsp</title>
</head>
<body>

<h2>&lt;fmt:setLocale&gt;</h2>

<%	
	Date now = new Date();	
	request.setAttribute("d",now);
%>
</br>

JAPANESE(JAPAN)¡G<fmt:setLocale value="ja_JP"/><fmt:formatDate value="${d}"/></br>
SPANISH¡G<fmt:setLocale value="es"/><fmt:formatDate value="${d}"/></br>
FRENCH¡G<fmt:setLocale value="fr"/><fmt:formatDate value="${d}"/></br>
FRENCH(CANADA)¡G<fmt:setLocale value="fr_CA"/><fmt:formatDate value="${d}"/></br>
CHINESE(TAIWAN)¡G<fmt:setLocale value="zh_TW"/><fmt:formatDate value="${d}"/></br>
CHINESE(CHINA)¡G<fmt:setLocale value="zh_CN"/><fmt:formatDate value="${d}"/></br>

</body>
</html>