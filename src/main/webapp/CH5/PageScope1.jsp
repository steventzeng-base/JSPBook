<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - PageScope1.jsp</title>
</head>
<body>

<h2>Page ½d³ò - pageContext</h2>
<%	
	pageContext.setAttribute("Name","mike");  	
	pageContext.setAttribute("Password","browser");
%>
<jsp:forward page="PageScope2.jsp"/>

</body>
</html>