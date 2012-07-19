<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
  <title>CH9 - Form.jsp</title>
</head>
<body>

<h2>�ϥ� EL�BJSTL �B�z�����</h2>
<fmt:requestEncoding value="Big5" />

�m�W�G<c:out value="${param.Name}" default="Nothing" /> <br>
�K�X�G<c:out value=" ${param.Password} " default="Nothing" /><br>
�ʧO�G<c:if test="${param.Sex == 'Male'}">�k<br></c:if>
            <c:if test="${param.Sex == 'Female'}">�k<br></c:if>
�~�֡G<c:choose>
	<c:when test="${param.Old == 10}">10 ~ 20<br></c:when>
	<c:when test="${param.Old == 20}">21 ~ 30<br></c:when>
	<c:when test="${param.Old == 30}">31 ~ 40<br></c:when>
	<c:otherwise>41 ~ 65<br></c:otherwise>
            </c:choose>
����G<c:forEach items="${paramValues.Habit}" var="habit">
        <c:choose>
	     <c:when test="${habit == 'Read'}"><li>�ݮ�</li></c:when>
	     <c:when test="${habit == 'Game'}"><li>�q��</li></c:when>
	     <c:when test="${habit == 'Travel'}"><li>�ȹC</li></c:when>
	     <c:when test="${habit == 'Music'}"><li>ť����</li></c:when>
	     <c:when test="${habit == 'Tv'}"><li>�ݹq��</li></c:when>
        </c:choose>
      </c:forEach>
</body>
</html>