<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>CH8 - Introspection.jsp</title>
</head>
<body>

 <h2>Introspection - �۬پ���</h2>
<fmt:requestEncoding value="Big5" />

<jsp:useBean id="myBean" scope="page" class="tw.com.javaworld.CH8.SimpleBean"/>
<jsp:setProperty name="myBean" property="*" />

�m�W�G<jsp:getProperty name="myBean" property="name"/><br>
�s���G<jsp:getProperty name="myBean" property="number"/>

</body>
</html>
