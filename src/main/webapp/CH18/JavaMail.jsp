<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH18 - JavaMail.jsp</title>
</head>
<body>

<h2>�Q��JavaMail�Ӷǰe�q�l�l�� </h2>
<%

	InternetAddress[] address = null;

	request.setCharacterEncoding("MS950");

	String mailserver   = "ecd.pchome.com.tw";
	String From         = request.getParameter("From");
	String to           = request.getParameter("To");
	String Subject      = request.getParameter("Subject");
        String messageText  = request.getParameter("Message");

    	boolean sessionDebug = false;
	
try {

  // �]�w�ҭn�Ϊ�Mail ���A���M�ҨϥΪ��ǰe��w
  java.util.Properties props = System.getProperties();
  props.put("mail.host",mailserver);
  props.put("mail.transport.protocol","smtp");
  
  // ���ͷs��Session �A��
  javax.mail.Session mailSession = javax.mail.Session.getDefaultInstance(props,null);
  mailSession.setDebug(sessionDebug);
	
  Message msg = new MimeMessage(mailSession);
  
  // �]�w�ǰe�l�󪺵o�H�H
  msg.setFrom(new InternetAddress(From));
  
  // �]�w�ǰe�l��ܦ��H�H���H�c
  address = InternetAddress.parse(to,false);
  msg.setRecipients(Message.RecipientType.TO, address);
  
  // �]�w�H�����D�D 
  msg.setSubject(Subject);
  // �]�w�e�H���ɶ�
  msg.setSentDate(new Date());
  
  // �]�w�ǰe�H��MIME Type
  msg.setText(messageText);
  
  // �e�H
  Transport.send(msg);

  out.println("�l��v���Q�ǰe");
	
}
    catch (MessagingException mex) {

      mex.printStackTrace();
    }
 
%>

</body>
</html>