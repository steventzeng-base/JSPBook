<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH9 - Jspsmart2.jsp</title>
</head>
<body>

<h2>�ɮפW�ǽd�� - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%	
	//�p���ɮפW�ǭӼ�
	int count=0;
	
	//SmartUpload����l��,�ϥγo��jspsmart�@�w�n�b�@�}�l�N�o�˫ŧi
	mySmartUpload.initialize(pageContext);
	
	//�̾�form�����e�W��
	mySmartUpload.upload();
	
	//�N�W�Ǫ��ɮפ@�Ӥ@�ӥX�ӳB�z
	for (int i=0;i<mySmartUpload.getFiles().getCount();i++)
	{
	    //��X�@���ɮ�
	    com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);
		
	    //�p�G�ɮצs�b�A���s�ɪ��ʧ@
	    if (!myFile.isMissing()) {
		
	        //�N�ɮצs��󵴹���|����m
	        myFile.saveAs("C:\\upload\\" + myFile.getFileName(), mySmartUpload.SAVE_PHYSICAL);
			
	        //��ܦ��W���ɮת��ԲӸ��
	        out.println("FieldName = " + myFile.getFieldName() + "<BR>");
	        out.println("Size = " + myFile.getSize() + "<BR>");
	        out.println("FileName = " + myFile.getFileName() + "<BR>");
	        out.println("FileExt = " + myFile.getFileExt() + "<BR>");
	        out.println("FilePathName = " + myFile.getFilePathName() + "<BR>");
	        out.println("ContentType = " + myFile.getContentType() + "<BR>");
	        out.println("ContentDisp = " + myFile.getContentDisp() +"<BR>");
	        out.println("TypeMIME = " + myFile.getTypeMIME() +"<BR>");
	        out.println("SubTypeMIME = " + myFile.getSubTypeMIME() + "<BR>");
	        count ++;
	    }
	}
	
	// ������ӤW���ɮ׼ƥ� 
	out.println("<BR>" + mySmartUpload.getFiles().getCount() + " files could be uploaded.<BR>");
	
	// ��ܦ��\�W���ɮ׼ƥ�	
	out.println(count + "file(s) uploaded.");
%>

</body>
</html>