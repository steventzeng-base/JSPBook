<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH8 - Counter1.jsp</title>
</head>
<body>

 <h2>�d�� Request�� JavaBean�d�ҵ{�� - Counter1</h2>

<jsp:useBean id="myBean" scope="request" class="tw.com.javaworld.CH8.Counter"/>
<p>�z�v���[<font color="red">
<jsp:getProperty name="myBean" property="count"/>
</font>��</p>
<p>�w��A�����[</p>

<jsp:include page="Hello.jsp" flush="true"/>

</body>
</html>
