<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>CH19 - Cart.jsp</title>
</head>
<body>

<c:set var="buylist" value="${sessionScope.shoppingcart}"/>
<c:if test="${ !empty buylist }">

<br>
<h2>目前您購物車的內容如下：</h2><br>
<table border="1" width="631">
    <tr bgcolor="#999999">
        <td width="194">
            <div align="center"><b>書名</b></div>
        </td>
        <td width="81">
            <div align="center"><b>作者</b></div>
        </td>
        <td width="93">
            <div align="center"><b>出版社</b></div>
        </td>
        <td width="57">
            <div align="center"><b>價格</b></div>
        </td>
        <td width="47">
            <div align="center"><b>數量</b></div>
        </td>
        <td width="119">
            <div align="center"><b></b></div>
        </td>
    </tr>

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
            <td>
                <form name="deleteForm" action="ShoppingServlet" method="POST">
                    <input type="submit" value="Delete">
                    <input type="hidden" name="del" value='${status.index}'>
                    <input type="hidden" name="action" value="DELETE">
                </form>
            </td>
        </tr>

    </c:forEach>

</table>
<p>
<form name="checkoutForm" action="ShoppingServlet" method="POST">
    <input type="hidden" name="action" value="CHECKOUT">
    <input type="submit" name="Checkout" value="付款結帳">
</form>

</c:if>
