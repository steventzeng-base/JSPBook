<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>CH9 - Form.jsp</title>
</head>
<body>

<h2>使用 EL、JSTL 處理表單資料</h2>
<fmt:requestEncoding value="UTF-8"/>

姓名：<c:out value="${param.Name}" default="Nothing"/> <br>
密碼：<c:out value=" ${param.Password} " default="Nothing"/><br>
性別：<c:if test="${param.Sex == 'Male'}">男<br></c:if>
<c:if test="${param.Sex == 'Female'}">女<br></c:if>
年齡：<c:choose>
    <c:when test="${param.Old == 10}">10 ~ 20<br></c:when>
    <c:when test="${param.Old == 20}">21 ~ 30<br></c:when>
    <c:when test="${param.Old == 30}">31 ~ 40<br></c:when>
    <c:otherwise>41 ~ 65<br></c:otherwise>
</c:choose>
興趣：<c:forEach items="${paramValues.Habit}" var="habit">
    <c:choose>
        <c:when test="${habit == 'Read'}">
            <li>看書</li>
        </c:when>
        <c:when test="${habit == 'Game'}">
            <li>電玩</li>
        </c:when>
        <c:when test="${habit == 'Travel'}">
            <li>旅遊</li>
        </c:when>
        <c:when test="${habit == 'Music'}">
            <li>聽音樂</li>
        </c:when>
        <c:when test="${habit == 'Tv'}">
            <li>看電視</li>
        </c:when>
    </c:choose>
</c:forEach>
</body>
</html>
