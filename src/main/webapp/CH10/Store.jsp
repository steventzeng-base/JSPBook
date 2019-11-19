<%@ page import="java.io.*,java.util.*" pageEncoding="UTF-8"%>
<%@ page import="tw.com.javaworld.CH10.Book" %>
<%
	Vector buylist = (Vector)session.getAttribute("shoppingcart");
    	String action = request.getParameter("action");

    	//  刪除購物車中的書籍
	if (action.equals("DELETE"))
    	{
       		String del = request.getParameter("del");
       		int d = (new Integer(del)).intValue();
       		buylist.removeElementAt(d);
    	}

    	// 新增書籍至購物車中
    	else if (action.equals("ADD"))
    	{
       		boolean match=false;
%>
	   	<jsp:useBean id="newBook" scope="page" class="tw.com.javaworld.CH10.Book"/>
		<jsp:setProperty name="newBook" property="*"/>
<%
       		//新增第一本書籍至購物車時
       		if (buylist == null)
       		{
       			buylist = new Vector();
       			buylist.addElement(newBook);
       		}
       		else
		{
       			for (int i=0; i< buylist.size(); i++)
       			{
           			Book book = (Book)buylist.elementAt(i);

          			// 假若新增的書籍和購物車的書籍一樣時
           			if (book.getName().equals(newBook.getName()))
           			{
           				book.setQuantity(book.getQuantity()+newBook.getQuantity());
           				buylist.setElementAt(book,i);
           				match = true;
           			} //end of if name matches
       			} // end of for

       			// 假若新增的書籍和購物車的書籍不一樣時
       			if (!match)
           		buylist.addElement(newBook);
       		}
	}

    	session.setAttribute("shoppingcart", buylist);

	if (buylist != null && (buylist.size() > 0))
	{
%>
<html>
<head>
  <title>CH10 - Store.jsp</title>
</head>
<body>

<h2>目前您購物車的內容如下：</h2>

<table border="1" width="631">
  <tr bgcolor="#999999">
    <td width="194"><div align="center"><b>書名</b></div></td>
    <td width="81"><div align="center"><b>作者</b></div></td>
    <td width="93"><div align="center"><b>出版社</b></div></td>
	<td width="57"><div align="center"><b>價格</b></div></td>
    <td width="47"><div align="center"><b>數量</b></div></td>
    <td width="119"><div align="center"><b></b></div></td>
  </tr>
<%
		for (int index=0; index < buylist.size();index++)
		{
    			Book order = (Book)buylist.elementAt(index);
%>
 <tr>
  <td><b><%= order.getName() %></b></td>
  <td><b><%= order.getAuthor() %></b></td>
  <td><b><%= order.getPublisher() %></b></td>
  <td><b><div align="right"><%= order.getPrice() %></div></b></td>
  <td><b><div align="right"><%= order.getQuantity() %></div></b></td>
  <td>
  <form name="deleteForm" action="Store.jsp" method="POST">
   <input type="submit" value="Delete">
   <input type="hidden" name= "del" value='<%= index %>'>
   <input type="hidden" name="action" value="DELETE">
  </form>
      </td>
    </tr>
<%
		}
%>
</table>
<p>
  <a href="Store.html">繼續購物</a>
  <form name="checkoutForm" action="Checkout.jsp" method="POST">
    <input type="hidden" name="action" value="CHECKOUT">
    <input type="submit" name="Checkout" value="付款結帳">
  </form>
<%
	}
	else
	{
%>
	<h2>目前您的購物車沒有任何物品：</h2><br>
	<a href="Store.html">繼續購物</a>
<%
	}
%>


</body>
</html>
