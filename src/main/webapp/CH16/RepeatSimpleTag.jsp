<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib uri="/WEB-INF/tlds/MyTaglib.tld" prefix="mytag" %>

<html>
<head>
  <title>CH16 - RepeatSimpleTag.jsp</title>
</head>
<body>

<h2>RepeateSimpleTag ����</h2>

<mytag:Repeat count="5" >
  <jsp:attribute name="fragment">
  ���а��� ....<br>
  </jsp:attribute>
</mytag:Repeat>
</body>
</html>