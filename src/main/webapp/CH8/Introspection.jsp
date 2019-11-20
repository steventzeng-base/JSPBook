<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>CH8 - Introspection.jsp</title>
</head>
<body>

<h2>Introspection - 自省機制</h2>
<fmt:requestEncoding value="UTF-8"/>

<jsp:useBean id="myBean" scope="page" class="tw.com.javaworld.CH8.SimpleBean"/>
<jsp:setProperty name="myBean" property="*"/>

姓名：
<jsp:getProperty name="myBean" property="name"/>
<br>
編號：
<jsp:getProperty name="myBean" property="number"/>

</body>
</html>
