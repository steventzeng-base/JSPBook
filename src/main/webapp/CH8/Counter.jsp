<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH8 - Counter.jsp</title>
</head>
<body>

 <h2>�d�� Page �� JavaBean�d�ҵ{�� - Counter</h2>

<jsp:useBean id="myBean" scope="page" class="tw.com.javaworld.CH8.Counter"/>
<p>�z�v���[<font color="red">
<jsp:getProperty name="myBean" property="count"/>
</font>��</p>
<p>�w��A�����[</p>

</body>
</html>
