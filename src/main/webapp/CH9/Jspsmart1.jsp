<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH9 - Jspsmart1.jsp</title>
</head>
<body>

<h2>�ɮפW�ǽd�� - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%	
	//�p���ɮפW�ǭӼ�	
	int count=0;        	
	
	//SmartUpload����l��,�ϥγo��jspsmart�@�w�n�b�@�}�l�N�o�˫ŧi	
	mySmartUpload.initialize(pageContext);    
	
	//�ŧi����W�Ǥ��ɮפj�p�� 5 MB    
	mySmartUpload.setMaxFileSize(5 * 1024 * 1024);	
	
	//�̾�form�����e�W��	
	mySmartUpload.upload();	
	
	try {        
		//�N�ɮצs���C:\Upload\		
		count = mySmartUpload.save("C:\\Upload\\");
		
		//�L�X�W���ɮ׭Ӽ� 		
		out.println("�z���\�W��"+count + "���ɮ�.");
		
	} catch (Exception e) {
		out.println(e.toString());
	}	
%>
</body>
</html>