<%@ page contentType="text/html;charset=big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
  <title>���էA���Ĥ@�ӨϥΨ�JSTL������</title>
  </head>
  
  <body>
  <c:out value="�w����էA���Ĥ@�ӨϥΨ�JSTL������"/>
  </br>�A�ϥΪ��s�����O:</br>
  <c:out value="${header['User-Agent']}"/>
  <c:set var="a" value="David O'Davies"  />
  <c:out value="David O'Davies" escapeXml="true"/>
  </body>
</html>
