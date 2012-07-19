<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH8 - Remove.jsp</title>
</head>
<body>

 <h2>移除 JavaBean</h2>

<jsp:useBean id="myBean" scope="request" class="tw.com.javaworld.CH8.Counter"/>
<p>您己參觀<font color="red">
<jsp:getProperty name="myBean" property="count"/>
</font>次</p>
<p>歡迎再次參觀</p>

<c:remove var="myBean" scope="request" />

<jsp:include page="Hello.jsp" flush="true"/>

</body>
</html>
