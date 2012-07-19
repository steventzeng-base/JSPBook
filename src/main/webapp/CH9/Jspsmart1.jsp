<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH9 - Jspsmart1.jsp</title>
</head>
<body>

<h2>檔案上傳範例 - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%	
	//計算檔案上傳個數	
	int count=0;        	
	
	//SmartUpload之初始化,使用這個jspsmart一定要在一開始就這樣宣告	
	mySmartUpload.initialize(pageContext);    
	
	//宣告限制上傳之檔案大小為 5 MB    
	mySmartUpload.setMaxFileSize(5 * 1024 * 1024);	
	
	//依據form之內容上傳	
	mySmartUpload.upload();	
	
	try {        
		//將檔案存放於C:\Upload\		
		count = mySmartUpload.save("C:\\Upload\\");
		
		//印出上傳檔案個數 		
		out.println("您成功上傳"+count + "個檔案.");
		
	} catch (Exception e) {
		out.println(e.toString());
	}	
%>
</body>
</html>