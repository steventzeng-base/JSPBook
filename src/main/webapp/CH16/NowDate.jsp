<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="JSPBook" tagdir="/WEB-INF/tags/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH16 - NowDate.jsp</title>
</head>
<body>

<h2>Tag File 範例</h2>

<JSPBook:NowDate>
    現在時間 In full format：${fullDate}<br>
    現在時間 In long format：${longDate}<br>
    現在時間 In medium format：${mediumDate}<br>
    現在時間 In short format：${shortDate}<br>
</JSPBook:NowDate>
Now Date is：${shortDate}...
</body>
</html>
