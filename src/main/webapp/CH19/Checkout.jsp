<%@ page import="java.util.*,tw.com.javaworld.CH19.Book" %>
<%@ page contentType="text/html;charset=MS950" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH19 - Checkout.jsp</title>
</head>
<body>

<br>

<center>
 <h2>�����ѩ� - ���b</h2><br>
 <table border="1" width="631">
  <tr bgcolor="#999999"> 
    <td width="194"><div align="center"><b>�ѦW</b></div></td>
    <td width="81"><div align="center"><b>�@��</b></div></td>
    <td width="57"><div align="center"><b>�X����</b></div></td>
    <td width="93"><div align="center"><b>����</b></div></td>
    <td width="47"><div align="center"><b>�ƶq</b></div></td>
    <td width="119"><div align="center"><b></b></div></td>
  </tr>
  
  <c:set var="buylist" value="${sessionScope.shoppingcart}" />
  <c:set var="amount" value="${requestScope.amount}" />
  
  <c:forEach items="${buylist}" var="order" varStatus="status" >
 
 <tr>
 <td><b>${order.name}</b></td>
 <td><b>${order.author}</b></td>
 <td><b>${order.publisher}</b></td>
 <td><b><div align="right">${order.price}</div></b></td>
 <td><b><div align="right">${order.quantity}</div></b></td>
 </tr>
 
 </c:forEach>
 
 <tr>
 <td></td>
 <td></td>
 <td></td>
 <td><font color="red"><b>�`���B�G</b></font></td>
 <td></td>
 <td><font color="red"><b>\$${requestScope.amount}</b></font></td>
 <td> </td>
 </tr>
 </table>
 <p>
 <a href="../CH19/EShop.jsp">�O�_�~���ʪ�</a>
 </center>
</body>
</html>