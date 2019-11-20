<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.Multipart,javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeBodyPart" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.internet.MimeMultipart" %>
<%@ page import="java.text.MessageFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ResourceBundle" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH18 - JavaMail4.jsp</title>
</head>
<body>

<h2>利用JavaMail來傳送註冊資料</h2>
    <%
	InternetAddress[] address = null;
	ResourceBundle messages = ResourceBundle.getBundle("Mail");

	request.setCharacterEncoding("UTF-8");

	String mailserver   = "ecd.pchome.com.tw";
	String From         = "jsptw@pchome.com.tw";
	String Subject      = "歡迎加入 JavaWorld 論壇";
	String name         = request.getParameter("Name");
	String password     = request.getParameter("Password");
	String to           = request.getParameter("To");

	Object[] args = { name , password};
	MessageFormat formatter = new MessageFormat("");
	formatter.applyPattern(messages.getString("message"));
	String messageText  = formatter.format(args);

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

  		// 設定郵件內容的型態為 text/html
  		mbp.setContent(messageText,"text/html;charset=UTF-8");
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
