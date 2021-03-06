<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html>
<head>
    <meta charset="UTF-8">
    <title>CH19 - EShop.jsp</title>
</head>
<body>

<h2>Model 2 範例 - Shoppingcart</h2>
<font size="+3">網路書店</font>
<hr>
<p>

<table border="1" width="631">
    <tr bgcolor="#999999">
        <td width="174">
            <div align="center"><b>書名</b></div>
        </td>
        <td width="101">
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
    <form name="shoppingForm" action="ShoppingServlet" method="POST">
        <tr>
            <td width="174">
                <div align="center">JSP 2.0 技術手冊</div>
            </td>
            <td width="101">
                <div align="center">林上傑</div>
            </td>
            <td width="57">
                <div align="center">碁峰</div>
            </td>
            <td width="47">
                <div align="right">650</div>
            </td>
            <td width="93"> 數量：
                <input type="text" name="quantity" size="3" value=1>
            </td>
            <td width="119">
                <input type="submit" name="Submit" value="放入購物車">
            </td>
        </tr>
        <input type="hidden" name="name" value="JSP 2.0 技術手冊">
        <input type="hidden" name="author" value="林上傑">
        <input type="hidden" name="publisher" value="碁峰">
        <input type="hidden" name="price" value="650">
        <input type="hidden" name="action" value="ADD">
    </form>
    <form name="shoppingForm" action="ShoppingServlet" method="POST">
        <tr>
            <td width="174">
                <div align="center">紫牛－讓產品自己說故事</div>
            </td>
            <td width="101">
                <div align="center">賽斯‧高汀</div>
            </td>
            <td width="57">
                <div align="center">商智</div>
            </td>
            <td width="47">
                <div align="right">237</div>
            </td>
            <td width="93">數量：
                <input type="text" name="quantity" size="3" value=1>
            </td>
            <td width="119">
                <input type="submit" name="Submit" value="放入購物車">
            </td>
        </tr>
        <input type="hidden" name="name" value="紫牛－讓產品自己說故事">
        <input type="hidden" name="author" value="賽斯‧高汀">
        <input type="hidden" name="publisher" value="商智">
        <input type="hidden" name="price" value="237">
        <input type="hidden" name="action" value="ADD">
    </form>
    <form name="shoppingForm" action="ShoppingServlet" method="POST">
        <tr>
            <td width="174">
                <div align="center">1421-中國發現世界</div>
            </td>
            <td width="101">
                <div align="center">孟西士</div>
            </td>
            <td width="57">
                <div align="center">遠流</div>
            </td>
            <td width="47">
                <div align="right">470</div>
            </td>
            <td width="93">數量：
                <input type="text" name="quantity" size="3" value=1>
            </td>
            <td width="119">
                <input type="submit" name="Submit" value="放入購物車">
            </td>
        </tr>
        <input type="hidden" name="name" value="1421-中國發現世界">
        <input type="hidden" name="author" value="孟西士">
        <input type="hidden" name="publisher" value="遠流">
        <input type="hidden" name="price" value="470">
        <input type="hidden" name="action" value="ADD">
    </form>
    <form name="shoppingForm" action="ShoppingServlet" method="POST">
        <tr>
            <td width="174">
                <div align="center">如何打敗可口可樂</div>
            </td>
            <td width="101">
                <div align="center">翟若適</div>
            </td>
            <td width="57">
                <div align="center">聯合文學</div>
            </td>
            <td width="47">
                <div align="right">180</div>
            </td>
            <td width="93">數量：
                <input type="text" name="quantity" size="3" value=1>
            </td>
            <td width="119">
                <input type="submit" name="Submit" value="放入購物車">
            </td>
        </tr>
        <input type="hidden" name="name" value="如何打敗可口可樂">
        <input type="hidden" name="author" value="翟若適">
        <input type="hidden" name="publisher" value="聯合文學">
        <input type="hidden" name="price" value="180">
        <input type="hidden" name="action" value="ADD">
    </form>
    <form name="shoppingForm" action="ShoppingServlet" method="POST">
        <tr>
            <td width="174">
                <div align="center">菲奧莉娜逆勢出擊</div>
            </td>
            <td width="101">
                <div align="center">彼得‧鮑洛斯</div>
            </td>
            <td width="57">
                <div align="center">商周出版</div>
            </td>
            <td width="47">
                <div align="right">300</div>
            </td>
            <td width="93">數量：
                <input type="text" name="quantity" size="3" value=1>
            </td>
            <td width="119">
                <input type="submit" name="Submit" value="放入購物車">
            </td>
        </tr>
        <input type="hidden" name="name" value="菲奧莉娜逆勢出擊">
        <input type="hidden" name="author" value="彼得‧鮑洛斯">
        <input type="hidden" name="publisher" value="商周出版">
        <input type="hidden" name="price" value="300">
        <input type="hidden" name="action" value="ADD">
    </form>
</table>
<p>
    <jsp:include page="Cart.jsp" flush="true"/>
</body>
</html>
