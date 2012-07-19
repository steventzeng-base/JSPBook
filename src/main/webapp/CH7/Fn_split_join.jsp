<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
  <title>CH7 - Fn_split_join.jsp</title>
</head>
<body>

<h2>\${fn:split(string, delimiters)} </h2>
<h2>\${fn:join(array, separator)} </h2></br>

<c:set var="s1" value="There is a castle on a cloud"/>
<c:set var="a1" value='${fn:split(s1, " ")}' />
<table cellpadding="5" border="1">
  <tr>
    <th align="left">Input Array</th>
    <th>Separator</th>
    <th>Result</th>
  </tr>
  <tr>
    <td>${s1}</td>
    <td> + </td>
    <td>${fn:join(a1, " + ")}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td>&lt;sep></td>
    <td>${fn:join(a1, " &lt;sep> ")}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td>empty string</td>
    <td>${fn:join(a1, "")}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td>null</td>
    <td>${fn:join(a1, null)}</td>
  </tr>
  <tr>
    <td>null</td>
    <td>empty string</td>
    <td>&nbsp;${fn:join(null, "")}</td>
  </tr>
</table>

</body>
</html>