<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH8 - Counter3.jsp</title>
</head>
<body>

 <h2>�d�� Application �� JavaBean�d�ҵ{�� - Counter3</h2>

<jsp:useBean id="myBean" scope="application" class="tw.com.javaworld.CH8.Counter"/>
<p>�z�v���[<font color="red">
<jsp:getProperty name="myBean" property="count"/>
</font>��</p>
<p>�w��A�����[</p>

</body>
</html>
