<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tlds/MyTaglib.tld" prefix="mytag" %>

<html>
<head>
  <title>CH16 - RepeatSimpleTag.jsp</title>
</head>
<body>

<h2>RepeateSimpleTag 標籤</h2>

<mytag:Repeat count="5" >
  <jsp:attribute name="fragment">
  重覆執行 ....<br>
  </jsp:attribute>
</mytag:Repeat>
</body>
</html>
