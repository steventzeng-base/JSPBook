<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH7 - Core_imported.jsp</title>
</head>
<body>

<fmt:requestEncoding value="Big5" />
<c:set var="output1" value="�ϥ��ݩʽd��Ǩ�Core_import.jsp��" scope="request"/>
${input1}</br>
<c:out value="${param.input2}" escapeXml="true" />

</body>
</html>