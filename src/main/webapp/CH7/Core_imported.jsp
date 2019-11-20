<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>CH7 - Core_imported.jsp</title>
</head>
<body>

<fmt:requestEncoding value="UTF-8"/>
<c:set var="output1" value="使用屬性範圍傳到Core_import.jsp中" scope="request"/>
${input1}</br>
<c:out value="${param.input2}" escapeXml="true"/>

</body>
</html>
