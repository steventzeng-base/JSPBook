<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH8 - Counter1.jsp</title>
</head>
<body>

<h2>範圍為 Request的 JavaBean範例程式 - Counter1</h2>

<jsp:useBean id="myBean" scope="request" class="tw.com.javaworld.CH8.Counter"/>
<p>您己參觀<font color="red">
    <jsp:getProperty name="myBean" property="count"/>
</font>次</p>
<p>歡迎再次參觀</p>

<jsp:include page="Hello.jsp" flush="true"/>

</body>
</html>
