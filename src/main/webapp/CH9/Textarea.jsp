<%@ page contentType="text/html;charset=big5" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>CH9 - Textarea.jsp</title>
</head>
<body>

<h2>Textarea �d��</h2>
<fmt:requestEncoding value="MS950" />

<%
	// �N�qTextarea����ơA�s�Jmsg���r���
	String msg = request.getParameter("Message");
	
	// �ŧi�@�s�r��A��ܭק�L�r��᪺���G
	String Message = "";

	// msgLength ���Textarea ���r�����
   	 int msgLength = msg.length();

    	// Position ��ܥثe��Ъ���m
    	int Position = 0;

    	while (true)
    	{
	      // ���0x0D ����m
	      int index = msg.indexOf(0x0D, Position);

        	      // ���]���S������ɡA�������}while �j��
        	      if (index == -1) {    break;      }

        	      // ���]������ɡA�N���椧�e���r��A
	      	      // ��m��s��Message�r��W�A�����A�[�W <br>
        	      if (index > Position) {
		  	  Message += msg.substring(Position, index);
        	      }
        	      Message += "<br>";
		Position = index + 1;
      	}

      	if (Position >= 0) {
        	       Message += msg.substring(Position);
      	}
     
     	out.println(Message);    
%>

</body>
</html>