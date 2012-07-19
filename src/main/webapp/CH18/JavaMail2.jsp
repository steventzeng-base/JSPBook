<%@ page import="javax.mail.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.*,java.io.*" %>

<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH18 - JavaMail2.jsp</title>
</head>
<body>

<h2>利用JavaMail來傳送電子郵件 - HTML格式案</h2>

<%
	InternetAddress[] address = null;
	
	request.setCharacterEncoding("MS950");

	String mailserver   = "ecd.pchome.com.tw";
	String From         = request.getParameter("From");
	String to           = request.getParameter("To");
	String Subject      = request.getParameter("Subject");
	String type	    = request.getParameter("Type");
	String messageText  = request.getParameter("Message");
	
  	boolean sessionDebug = false;

	try {

  		// 設定所要用的Mail 伺服器和所使用的傳送協定
  		java.util.Properties props = System.getProperties();
 
  		props.put("mail.host",mailserver);
  		props.put("mail.transport.protocol","smtp");
  
  		// 產生新的Session 服務
  		javax.mail.Session mailSession = javax.mail.Session.getDefaultInstance(props,null);
  		mailSession.setDebug(sessionDebug);
	
  		Message msg = new MimeMessage(mailSession);
  
  		// 設定傳送郵件的發信人
  		msg.setFrom(new InternetAddress(From));
  
  		// 設定傳送郵件至收信人的信箱
  		address = InternetAddress.parse(to,false);
  		msg.setRecipients(Message.RecipientType.TO, address);
  
  		// 設定信中的主題 
  		msg.setSubject(Subject);
  
  		// 設定送信的時間
  		msg.setSentDate(new Date());

  		Multipart mp = new MimeMultipart();
  		MimeBodyPart mbp = new MimeBodyPart();
	      
  		// 設定郵件內容的型態為 text/plain 或 text/html
  		mbp.setContent(messageText,type + ";charset=MS950");
  		mp.addBodyPart(mbp);
  		msg.setContent(mp);
   
 		Transport.send(msg);
 		out.println("郵件己順利傳送");
	
	}
   	catch (MessagingException mex) 
   	{
      		mex.printStackTrace();
    	}
%>

</body>
</html>