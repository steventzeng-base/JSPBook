<%@ page contentType="text/html;charset=MS950" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH14 - Mysql_jstl.jsp</title>
</head>
<body>

<h2>�N��Ʀs�J Mysql �� - �ϥ� JSTL �g�k</h2>

<fmt:requestEncoding value="MS950" />

<c:set var="birth" value="1978/12/11" />
<c:set var="sex" value="F" />
<c:set var="email" value="aaa@asdf.com" />

<sql:setDataSource driver="com.mysql.jdbc.Driver"
		   url="jdbc:mysql://localhost:3306/sample_db?useUnicode=true&characterEncoding=UTF-8"
		   user="root"
		   password="browser" />

<sql:update>
  INSERT INTO employee(employee_id, last_name, first_name, birth, sex, email) 
  VALUES ( ? , ? , ? , ? , ? , ? )
  
  <sql:param value="${employee_id}" />
  <sql:param value="${param.last_name}" />
  <sql:param value="${param.first_name}" />
  <sql:param value="${birth}" />
  <sql:param value="${sex}" />
  <sql:param value="${email}" /> 
</sql:update>

<sql:query var="result">
  SELECT * FROM employee
</sql:query>

�q employee ���X�Ҧ��s�W���m�W�G<br>
<c:forEach items="${result.rows}" var="row" >
�s�W�m�W�G${row.last_name}
	  ${row.first_name}<br>
</c:forEach>

</body>
</html>