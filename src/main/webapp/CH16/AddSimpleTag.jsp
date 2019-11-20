<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tlds/MyTaglib.tld" prefix="mytag" %>

<html>
<head>
    <title>CH16 - AddSimpleTag.jsp</title>
</head>
<body>

<h2>AddSimpleTag 標籤</h2>

<h1><mytag:Add num1="5" num2="9"/></h1>

最後結果：${sum}

</body>
</html>
