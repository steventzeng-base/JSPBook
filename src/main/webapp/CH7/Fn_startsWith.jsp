<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>CH7 - Fn_startsWith.jsp</title>
</head>
<body>

<h2>\${fn:startsWith(string, prefix)} </h2>
</br>
<c:set var="s1" value="There is a castle on a cloud"/>

<table cellpadding="5" border="1">
    <tr>
        <th align="left">Input String</th>
        <th>Substring</th>
        <th>Result</th>
    </tr>
    <tr>
        <td>${s1}</td>
        <td>castle</td>
        <td>${fn:startsWith(s1, "castle")}</td>
    </tr>
    <tr>
        <td>${s1}</td>
        <td>There is</td>
        <td>${fn:startsWith(s1, "There is")}</td>
    </tr>
    <tr>
        <td>${s1}</td>
        <td>null</td>
        <td>${fn:startsWith(s1, undefined)}</td>
    </tr>
    <tr>
        <td>${s1}</td>
        <td>empty string</td>
        <td>${fn:startsWith(s1, "")}</td>
    </tr>
    <tr>
        <td>null</td>
        <td>castle</td>
        <td>${fn:startsWith(undefined, "castle")}</td>
    </tr>
    <tr>
        <td>null</td>
        <td>empty string</td>
        <td>${fn:startsWith(undefined, "")}</td>
    </tr>
</table>

</body>
</html>
