<%@ page import="com.jspsmart.upload.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH9 - Jspsmart2.jsp</title>
</head>
<body>

<h2>檔案上傳範例 - jspSmart</h2>

<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload"/>
<%
    //計算檔案上傳個數
    int count = 0;

    //SmartUpload之初始化,使用這個jspsmart一定要在一開始就這樣宣告
    mySmartUpload.initialize(pageContext);

    //依據form之內容上傳
    mySmartUpload.upload();

    //將上傳的檔案一個一個出來處理
    for (int i = 0; i < mySmartUpload.getFiles().getCount(); i++) {
        //抓出一個檔案
        com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);

        //如果檔案存在，做存檔的動作
        if (!myFile.isMissing()) {

            //將檔案存放於絕對路徑的位置
            myFile.saveAs("C:\\upload\\" + myFile.getFileName(), mySmartUpload.SAVE_PHYSICAL);

            //顯示此上傳檔案的詳細資料
            out.println("FieldName = " + myFile.getFieldName() + "<BR>");
            out.println("Size = " + myFile.getSize() + "<BR>");
            out.println("FileName = " + myFile.getFileName() + "<BR>");
            out.println("FileExt = " + myFile.getFileExt() + "<BR>");
            out.println("FilePathName = " + myFile.getFilePathName() + "<BR>");
            out.println("ContentType = " + myFile.getContentType() + "<BR>");
            out.println("ContentDisp = " + myFile.getContentDisp() + "<BR>");
            out.println("TypeMIME = " + myFile.getTypeMIME() + "<BR>");
            out.println("SubTypeMIME = " + myFile.getSubTypeMIME() + "<BR>");
            count++;
        }
    }

    // 顯示應該上傳檔案數目
    out.println("<BR>" + mySmartUpload.getFiles().getCount() + " files could be uploaded.<BR>");

    // 顯示成功上傳檔案數目
    out.println(count + "file(s) uploaded.");
%>

</body>
</html>
