<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>測試你的第一個使用到JSTL的網頁</title>
</head>

<body>
<c:out value="歡迎測試你的第一個使用到JSTL的網頁"/>
</br>你使用的瀏覽器是:</br>
<c:out value="${header['User-Agent']}"/>
<c:set var="a" value="David O'Davies"/>
<c:out value="David O'Davies" escapeXml="true"/>
</body>
</html>
