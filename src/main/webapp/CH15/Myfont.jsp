<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib uri="/WEB-INF/tlds/MyTaglib.tld" prefix="mytag" %>

<html>
<head>
  <title>CH15 - Myfont.jsp</title>
</head>
<body>

<h2>myfont ����</h2>

<mytag:myfont color="Blue">
  myfont���d�ҵ{��
</mytag:myfont><br>

<mytag:myfont color="Black" border="3" bgColor="white" >
  myfont���d�ҵ{��
</mytag:myfont><br>

<mytag:myfont color="Blue" fontSize="6" bgColor="#C0C0C0">
  myfont���d�ҵ{��
</mytag:myfont><br>

<mytag:myfont color="#C0C0C0" border="7" bgColor="#123456" fontSize="5">
  myfont���d�ҵ{��
</mytag:myfont>

</body>
</html>