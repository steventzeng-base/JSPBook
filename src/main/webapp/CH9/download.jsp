<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH9 - download.jsp</title>
</head>
<body>

<h2>�ɮפU���d�� - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" 
                                                        class="com.jspsmart.upload.SmartUpload" />

<%	
	// SmartUpload����l��
	mySmartUpload.initialize(pageContext);	
	
	//�����p���ŧi�A�_�h�N�|���ɮ���ܩ��s������
	mySmartUpload.setContentDisposition("inline;");	
	
	//�N sample.zip�U���A�U���w�]�W�٬�downloaded.zip
	mySmartUpload.downloadFile("C:\\upload\\sample.zip",
	                                                 "application/x-zip-compressed",
	                                                 "downloaded.zip");
%>

</body>
</html>