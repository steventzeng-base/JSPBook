<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH8 - Remove.jsp</title>
</head>
<body>

 <h2>���� JavaBean</h2>

<jsp:useBean id="myBean" scope="request" class="tw.com.javaworld.CH8.Counter"/>
<p>�z�v���[<font color="red">
<jsp:getProperty name="myBean" property="count"/>
</font>��</p>
<p>�w��A�����[</p>

<c:remove var="myBean" scope="request" />

<jsp:include page="Hello.jsp" flush="true"/>

</body>
</html>
