<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
    <title>CH9 - File.jsp</title>
</head>
<%	
	// �ŧi�N�W�Ǥ��ɮש�m����A����C:\Upload�ؿ���
	// �ŧi����W�Ǥ��ɮפj�p�� 5 MB
	String saveDirectory = "C:\\Upload\\";
	int    maxPostSize = 5 * 1024 * 1024 ;
	
	// �ŧi�W���ɮצW��
	String FileName = null;

	// �ŧi�W���ɮ׫��A
	String ContentType = null;

	// �ŧi�ԭz�W���ɮפ��e�ԭz
	String Description = null;
	
	//  �p��W���ɮפ��Ӽ�
	int count = 0 ;
	
	// ���@�ӷs��MultipartRequest ������Amulti
	MultipartRequest multi = new MultipartRequest(request , saveDirectory , maxPostSize ); 
%>
<body>
<%	
	//  ���o�Ҧ��W�Ǥ��ɮ׿�J���A�W�٤αԭz
	Enumeration filesname = multi.getFileNames();
	Enumeration filesdc = multi.getParameterNames(); 
	
	while (filesname.hasMoreElements())
	{
		String name = (String)filesname.nextElement();
		String dc = (String)filesdc.nextElement();
		FileName = multi.getFilesystemName(name);	
		ContentType = multi.getContentType(name);
		Description = multi.getParameter(dc);
		
		if (FileName != null) 
		{ 
			count ++;

%>
<font color="red">�A�W�Ǫ���<%= count %>�Ӫ��ɮסG</font><br>
�ɮצW�٬��G<%= FileName %><br>
�ɮ׫��A���G<%= ContentType %><br>
�ɮת��ԭz�G<%= Description %><br><br>

<%	
		 } // end if 
	} // end while
%> 
�z�`�@�W��<font color="red"><%= count %></font>���ɮ�
</body>
</html>