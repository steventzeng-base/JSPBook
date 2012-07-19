<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH18 - JavaMail2.jsp</title>
</head>
<body>

<h2>�Q��JavaMail�Ӷǰe�q�l�l�� - ���[�ɮ�</h2>

<%
	InternetAddress[] address = null;
	
	request.setCharacterEncoding("MS950");
	MultipartRequest multi = new MultipartRequest(request , "." , 5*1024*1024 , "MS950");

	String mailserver   = "ecd.pchome.com.tw";
	String From         = multi.getParameter("From");
	String to           = multi.getParameter("To");
	String Subject      = multi.getParameter("Subject");
	String type	    = multi.getParameter("Type");
	String messageText  = multi.getParameter("Message");
	String FileName     = multi.getFilesystemName("FileName");
	
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

  		if (FileName != null)
  		{
    	  		File file = new File(FileName);	
              
	  		// �p�G�����[�ɮ׮ɡA���N�l�󤺮e�������s�_��
          		MimeBodyPart mbp1 = new MimeBodyPart();
	      
 	  		// �]�w�l�󤺮e�����A�� text/plain �� text/html
  			mbp1.setContent(messageText, type + ";charset=MS950");

          		// �A�ӹ��ɮק@�B�z
          		MimeBodyPart mbp2 = new MimeBodyPart();
          		FileDataSource fds = new FileDataSource(FileName);
          		mbp2.setDataHandler(new DataHandler(fds));
          		mbp2.setFileName(MimeUtility.encodeText(fds.getName(), "MS950", "B"));

          		// �̫�A�N�G�̾�X�_�ӡA��@�@���l��e�X
          		Multipart mp = new MimeMultipart();
          		mp.addBodyPart(mbp1);
          		mp.addBodyPart(mbp2);
          		msg.setContent(mp);
   		}
   		else
   		{
          		// �Y�S���ɮ׮ɡA�N�����s�l�󤺮e          
         		 msg.setContent(messageText,type + ";charset=MS950");
   		}

  		Transport.send(msg);
		out.println("�l��v���Q�ǰe");
	
	}
    	catch (MessagingException mex) 
    	{
		mex.printStackTrace();
	}
%>

</body>
</html>