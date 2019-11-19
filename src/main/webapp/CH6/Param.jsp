<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH6 - Param.jsp</title>
</head>
<body>

  <h2>EL隱含物件 param、paramValues</h2>

  <fmt:requestEncoding value="UTF-8" />

  姓名：${param.username}</br>
  密碼：${param.password}</br>
  性別：${param.sex}</br>
  年齡：${param.old}</br>
  興趣：${paramValues.habit[0]}
        ${paramValues.habit[1]}

</body>
</html>
