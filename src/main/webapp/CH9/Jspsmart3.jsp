<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH9 - Jspsmart3.jsp</title>
</head>
<body>

<h2>�ɮפW�ǽd�� - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%
	
	//�p���ɮפW�ǭӼ�	
	int count=0;        	
	
	//SmartUpload����l��,�ϥγo��jspsmart�@�w�n�b�@�}�l�N�o�˫ŧi
	mySmartUpload.initialize(pageContext);    	

	//�ŧi�i�H�W�Ǫ��ɮ�����
	mySmartUpload.setAllowedFilesList("htm,html,txt,,");

	//����s�ɦ�m,�i�s�ɩ󵴹��m
	mySmartUpload.setDenyPhysicalPath(false);

	//�̾� form�����e�W��	
	mySmartUpload.upload();

	//�N�ɮץέ쥻���W�r�s���server�W���۹���|
	try {
		 count = mySmartUpload.save("C:\\upload\\", mySmartUpload.SAVE_PHYSICAL);
	  
	} catch (Exception e)  {

	 	 out.println("<b>Wrong selection : </b>" + e.toString());
	 }
   		
	//�L�X�`�@�W���ɮ׭Ӽ�
	out.println(count + " file(s) uploaded.");
%>

</body>
</html>