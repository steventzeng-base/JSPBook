<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH7 - Core_import.jsp</title>
</head>
<body>

<h2><c:out value="<c:import> ���Ϊk" /></h2>


<c:set var="input1" value="�ϥ��ݩʽd��Ǩ�Core_imported.jsp��" scope="request"/>
�]�tcore_imported.jsp��<hr/>

<c:import url="Core_imported.jsp" charEncoding="Big5">
<c:param name="input2" value="�ϥ�<c:param>�Ǩ�Core_imported.jsp��" />
</c:import><hr/>

${output1}

</body>
</html>