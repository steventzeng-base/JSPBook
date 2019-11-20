<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH18 - JavaMail.jsp</title>
</head>
<body>

<h2>利用JavaMail來傳送電子郵件 </h2>
<%

    InternetAddress[] address = null;

    request.setCharacterEncoding("UTF-8");

    String mailserver = "ecd.pchome.com.tw";
    String From = request.getParameter("From");
    String to = request.getParameter("To");
    String Subject = request.getParameter("Subject");
    String messageText = request.getParameter("Message");

    boolean sessionDebug = false;

    try {

        // 設定所要用的Mail 伺服器和所使用的傳送協定
        java.util.Properties props = System.getProperties();
        props.put("mail.host", mailserver);
        props.put("mail.transport.protocol", "smtp");

        // 產生新的Session 服務
        javax.mail.Session mailSession = javax.mail.Session.getDefaultInstance(props, null);
        mailSession.setDebug(sessionDebug);

        Message msg = new MimeMessage(mailSession);

        // 設定傳送郵件的發信人
        msg.setFrom(new InternetAddress(From));

        // 設定傳送郵件至收信人的信箱
        address = InternetAddress.parse(to, false);
        msg.setRecipients(Message.RecipientType.TO, address);

        // 設定信中的主題
        msg.setSubject(Subject);
        // 設定送信的時間
        msg.setSentDate(new Date());

        // 設定傳送信的MIME Type
        msg.setText(messageText);

        // 送信
        Transport.send(msg);

        out.println("郵件己順利傳送");

    } catch (MessagingException mex) {

        mex.printStackTrace();
    }

%>

</body>
</html>
