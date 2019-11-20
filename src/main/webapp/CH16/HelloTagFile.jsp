<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="JSPBook" tagdir="/WEB-INF/tags/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH16 - HelloTagFile.jsp</title>
</head>
<body>

<h2>Tag File 範例</h2>

<c:out value="使用 <JSPBook:Hello /> 印出 歡迎詞"/>
<h1><JSPBook:Hello/></h1>

</body>
</html>
