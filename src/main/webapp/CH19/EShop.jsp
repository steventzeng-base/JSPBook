<%@ page contentType="text/html;charset=MS950" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>CH19 - EShop.jsp</title>
</head>
<body>

<h2>Model 2 �d�� - Shoppingcart</h2>
<font size="+3">�����ѩ�</font>
<hr><p>

<table border="1" width="631">
  <tr bgcolor="#999999"> 
    <td width="174"><div align="center"><b>�ѦW</b></div></td>
    <td width="101"><div align="center"><b>�@��</b></div></td>
    <td width="57"><div align="center"><b>�X����</b></div></td>
	<td width="93"><div align="center"><b>����</b></div></td>
    <td width="47"><div align="center"><b>�ƶq</b></div></td>
    <td width="119"><div align="center"><b></b></div></td>
  </tr>
  <form name="shoppingForm" action="ShoppingServlet" method="POST">
    <tr> 
      <td width="174"><div align="center">JSP 2.0 �޳N��U</div></td>
      <td width="101"><div align="center">�L�W��</div></td>
      <td width="57"><div align="center">�֮p</div></td>
      <td width="47"><div align="right">650</div></td>
      <td width="93"> �ƶq�G 
        <input type="text" name="quantity" size="3" value=1>
      </td>
      <td width="119"> 
        <input type="submit" name="Submit" value="��J�ʪ���">
      </td>
    </tr>
    <input type="hidden" name="name" value="JSP 2.0 �޳N��U">
    <input type="hidden" name="author" value="�L�W��">
    <input type="hidden" name="publisher" value="�֮p">
    <input type="hidden" name="price" value="650">
    <input type="hidden" name="action" value="ADD">	
  </form>
  <form name="shoppingForm" action="ShoppingServlet" method="POST">
    <tr> 
      <td width="174"><div align="center">�����������~�ۤv���G��</div></td>
      <td width="101"><div align="center">�ɴ��E����</div></td>
      <td width="57"><div align="center">�Ӵ�</div></td>
      <td width="47"><div align="right">237</div></td>
      <td width="93">�ƶq�G 
        <input type="text" name="quantity" size="3" value=1>
      </td>
      <td width="119"> 
        <input type="submit" name="Submit" value="��J�ʪ���">
      </td>
    </tr>
    <input type="hidden" name="name" value="�����������~�ۤv���G��">
    <input type="hidden" name="author" value="�ɴ��E����">
    <input type="hidden" name="publisher" value="�Ӵ�">
    <input type="hidden" name="price" value="237">
    <input type="hidden" name="action" value="ADD">
  </form>
  <form name="shoppingForm" action="ShoppingServlet" method="POST">
    <tr> 
      <td width="174"><div align="center">1421-����o�{�@��</div></td>
      <td width="101"><div align="center">�s��h</div></td>
      <td width="57"><div align="center">���y</div></td>
      <td width="47"><div align="right">470</div></td>
      <td width="93">�ƶq�G 
        <input type="text" name="quantity" size="3" value=1>
      </td>
      <td width="119"> 
        <input type="submit" name="Submit" value="��J�ʪ���">
      </td>
    </tr>
    <input type="hidden" name="name" value="1421-����o�{�@��">
    <input type="hidden" name="author" value="�s��h">
    <input type="hidden" name="publisher" value="���y">
    <input type="hidden" name="price" value="470">
    <input type="hidden" name="action" value="ADD">
  </form>
  <form name="shoppingForm" action="ShoppingServlet" method="POST">
    <tr> 
      <td width="174"><div align="center">�p�󥴱ѥi�f�i��</div></td>
      <td width="101"><div align="center">�C�Y�A</div></td>
      <td width="57"><div align="center">�p�X���</div></td>
      <td width="47"><div align="right">180</div></td>
      <td width="93">�ƶq�G 
        <input type="text" name="quantity" size="3" value=1>
      </td>
      <td width="119"> 
        <input type="submit" name="Submit" value="��J�ʪ���">
      </td>
    </tr>
    <input type="hidden" name="name" value="�p�󥴱ѥi�f�i��">
    <input type="hidden" name="author" value="�C�Y�A">
    <input type="hidden" name="publisher" value="�p�X���">
    <input type="hidden" name="price" value="180">
    <input type="hidden" name="action" value="ADD">
  </form>
  <form name="shoppingForm" action="ShoppingServlet" method="POST">
    <tr> 
      <td width="174"><div align="center">������R�f�եX��</div></td>
      <td width="101"><div align="center">���o�E�j����</div></td>
      <td width="57"><div align="center">�өP�X��</div></td>
      <td width="47"><div align="right">300</div></td>
      <td width="93">�ƶq�G 
        <input type="text" name="quantity" size="3" value=1>
      </td>
      <td width="119"> 
        <input type="submit" name="Submit" value="��J�ʪ���">
      </td>
    </tr>
    <input type="hidden" name="name" value="������R�f�եX��">
    <input type="hidden" name="author" value="���o�E�j����">
    <input type="hidden" name="publisher" value="�өP�X��">
    <input type="hidden" name="price" value="300">
    <input type="hidden" name="action" value="ADD">
  </form>
</table>
<p> 
  <jsp:include page="Cart.jsp" flush="true" />
</body>
</html>