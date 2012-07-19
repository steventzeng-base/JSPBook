<%@ page info="JSP 2.0 技術手冊" contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - PageInfo.jsp</title>
</head>
<body>

<h2>page 隱含物件</h2>
Page Info = <%= ((javax.servlet.jsp.HttpJspPage)page).getServletInfo() %>

</body>
</html>