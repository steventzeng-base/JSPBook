<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="JSPBook" tagdir="/WEB-INF/tags/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH16 - NowDate.jsp</title>
</head>
<body>

<h2>Tag File �d��</h2>

<JSPBook:NowDate>
	�{�b�ɶ� In full format�G${fullDate}<br>
	�{�b�ɶ� In long format�G${longDate}<br>
	�{�b�ɶ� In medium format�G${mediumDate}<br>
	�{�b�ɶ� In short format�G${shortDate}<br>
</JSPBook:NowDate>
Now Date is�G${shortDate}... 
</body>
</html>