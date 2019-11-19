<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <title>CH9 - Jspsmart3.jsp</title>
</head>
<body>

<h2>檔案上傳範例 - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%

	//計算檔案上傳個數
	int count=0;

	//SmartUpload之初始化,使用這個jspsmart一定要在一開始就這樣宣告
	mySmartUpload.initialize(pageContext);

	//宣告可以上傳的檔案類型
	mySmartUpload.setAllowedFilesList("htm,html,txt,,");

	//限制存檔位置,可存檔於絕對位置
	mySmartUpload.setDenyPhysicalPath(false);

	//依據 form之內容上傳
	mySmartUpload.upload();

	//將檔案用原本的名字存放於server上的相對路徑
	try {
		 count = mySmartUpload.save("C:\\upload\\", mySmartUpload.SAVE_PHYSICAL);

	} catch (Exception e)  {

	 	 out.println("<b>Wrong selection : </b>" + e.toString());
	 }

	//印出總共上傳檔案個數
	out.println(count + " file(s) uploaded.");
%>

</body>
</html>
