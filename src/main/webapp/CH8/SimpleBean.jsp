<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH8 - SimpleBean.jsp</title>
</head>
<body>

<h2>JSP 使用 JavaBean 的方法</h2>

<jsp:useBean id="myBean" scope="page" class="tw.com.javaworld.CH8.SimpleBean"/>
<jsp:setProperty name="myBean" property="name" value="${param.Name}" />
<jsp:setProperty name="myBean" property="number" value="${param.Number}"/>
Hi !
<font color="red"><jsp:getProperty name="myBean" property="name" /></font>
你好<br>
您的編號為：
<font color="red"><jsp:getProperty name="myBean" property="number" /></font>

</body>
</html>
