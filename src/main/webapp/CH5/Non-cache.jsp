<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH5 - Non-cache.jsp</title>
</head>
<body>

<h2>�ѨM�s���� cache �����D -  response</h2>
<% 	
	if (request.getProtocol().compareTo("HTTP/1.0") == 0) 		
		 response.setHeader("Pragma", "no-cache"); 	
	else if (request.getProtocol().compareTo("HTTP/1.1") == 0) 		
		response.setHeader("Cache-Control", "no-cache"); 	
	
	response.setDateHeader("Expires", 0); 
%>

</body>
</html>