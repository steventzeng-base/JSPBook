<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH19 - Checkout.jsp</title>
</head>
<body>

<br>

<center>
    <h2>網路書店 - 結帳</h2><br>
    <table border="1" width="631">
        <tr bgcolor="#999999">
            <td width="194">
                <div align="center"><b>書名</b></div>
            </td>
            <td width="81">
                <div align="center"><b>作者</b></div>
            </td>
            <td width="57">
                <div align="center"><b>出版社</b></div>
            </td>
            <td width="93">
                <div align="center"><b>價格</b></div>
            </td>
            <td width="47">
                <div align="center"><b>數量</b></div>
            </td>
            <td width="119">
                <div align="center"><b></b></div>
            </td>
        </tr>

        <c:set var="buylist" value="${sessionScope.shoppingcart}"/>
        <c:set var="amount" value="${requestScope.amount}"/>

        <c:forEach items="${buylist}" var="order" varStatus="status">

            <tr>
                <td><b>${order.name}</b></td>
                <td><b>${order.author}</b></td>
                <td><b>${order.publisher}</b></td>
                <td><b>
                    <div align="right">${order.price}</div>
                </b></td>
                <td><b>
                    <div align="right">${order.quantity}</div>
                </b></td>
            </tr>

        </c:forEach>

        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><font color="red"><b>總金額：</b></font></td>
            <td></td>
            <td><font color="red"><b>\$${requestScope.amount}</b></font></td>
            <td></td>
        </tr>
    </table>
    <p>
        <a href="../CH19/EShop.jsp">是否繼續購物</a>
</center>
</body>
</html>
