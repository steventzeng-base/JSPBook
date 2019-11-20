<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH6 - ELOperator.jsp</title>
</head>
<body>
<h2>EL的運算子</h2>

<c:set value="mike" var="username" scope="request"/>
<table border="1" width="50%" align="left">
    <TR>
    <TR>
        <TH>運算式子</TH>
        <TH>結果</TH>
    </TR>
    <TR>
        <TD>14 + 3</TD>
        <TD>${14 + 3}</TD>
    </TR>
    <TR>
        <TD>14 - 3</TD>
        <TD>${14 - 3}</TD>
    </TR>
    <TR>
        <TD>14 * 3</TD>
        <TD>${14 * 3}</TD>
    </TR>
    <TR>
        <TD>14 / 3</TD>
        <TD>${14 / 3}</TD>
    </TR>
    <TR>
        <TD>14 % 3</TD>
        <TD>${14 % 3}</TD>
    </TR>
    <TR>
        <TD>14 == 3</TD>
        <TD>${14 == 3}</TD>
    </TR>
    <TR>
        <TD>14 != 3</TD>
        <TD>${14 != 3}</TD>
    </TR>
    <TR>
        <TD>14 < 3</TD>
        <TD>${14 < 3}</TD>
    </TR>
    <TR>
        <TD>14 > 3</TD>
        <TD>${14 > 3}</TD>
    </TR>
    <TR>
        <TD>14 <= 3</TD>
        <TD>${14 <= 3}</TD>
    </TR>
    <TR>
        <TD>14 >= 3</TD>
        <TD>${14 >= 3}</TD>
    </TR>
    <TR>
        <TD>true && false</TD>
        <TD>${true && false}</TD>
    </TR>
    <TR>
        <TD>true || false</TD>
        <TD>${true || false}</TD>
    </TR>
    <TR>
        <TD>! false</TD>
        <TD>${! false}</TD>
    </TR>
    <TR>
        <TD>empty username</TD>
        <TD>${empty username}</TD>
    </TR>
    <TR>
        <TD>empty password</TD>
        <TD>${empty password}</TD>
    </TR>
</table>
</body>
</html>
