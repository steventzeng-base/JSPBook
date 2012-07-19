<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH7 - Core_forEach2.jsp</title>
</head>
<body>

<h2><c:out value="<c:forEach> °j°é" /></h2>

<c:forEach begin="1" end="10" var="item" >
${item}</br>
</c:forEach>

</body>
</html>