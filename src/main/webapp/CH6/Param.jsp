<%@ page contentType="text/html;charset=big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH6 - Param.jsp</title>
</head>
<body>

  <h2>EL���t���� param�BparamValues</h2>
  
  <fmt:requestEncoding value="Big5" />

  �m�W�G${param.username}</br>
  �K�X�G${param.password}</br>
  �ʧO�G${param.sex}</br>
  �~�֡G${param.old}</br>
  ����G${paramValues.habit[0]}
        ${paramValues.habit[1]}
    
</body>
</html>