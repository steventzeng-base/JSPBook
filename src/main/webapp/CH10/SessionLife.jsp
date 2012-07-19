<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH10 - SessionLife.jsp</title>
</head>
<body>

<h2>Session�ͩR�g���d��</h2>

<%	
	// �p�Gsession�O�s���A�]�wsession�����	
	if(session.isNew())	
	{	 
		// �]�wsession�Y�Q���S�����ʫh��Session�L��	 
		session.setMaxInactiveInterval(10);	
		
		// �N��Session time out����ƥ[�J�L���ɶ���	 
		session.setAttribute("expire","10");  	
		out.println("�]�wSession�Y�Q���S�����ʫh��Session�L��");	
	}	
	else	
	{
		String str_expire_time =(String)session.getAttribute("expire");    		
		
		// ���osession�غc���ɶ�  	    
		long create_time  = session.getCreationTime();	    
		long access_time  = session.getLastAccessedTime();	    
		long current_time = System.currentTimeMillis();		
		
		long exist_time   = (current_time-create_time)/1000;		
		out.println("session�w�s�b"+exist_time+"��");		
		
		// �p�Gsession�s�b���ɶ��W�L30��A�h�Nsession����		
		if (exist_time >= 30) 		
		{			
			out.println("session �ɶ��w��...�۰ʥ���");		    
			session.invalidate();
		 }	
	}
%>

</body>
</html>
