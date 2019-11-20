<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>CH9 - Textarea.jsp</title>
</head>
<body>

<h2>Textarea 範例</h2>
<fmt:requestEncoding value="UTF-8"/>

<%
    // 將從Textarea的資料，存入msg的字串當中
    String msg = request.getParameter("Message");

    // 宣告一新字串，表示修改過字串後的結果
    String Message = "";

    // msgLength 表示Textarea 的字串長度
    int msgLength = msg.length();

    // Position 表示目前游標的位置
    int Position = 0;

    while (true) {
        // 表示0x0D 的位置
        int index = msg.indexOf(0x0D, Position);

        // 假設都沒有換行時，直接離開while 迴圈
        if (index == -1) {
            break;
        }

        // 假設有換行時，將換行之前的字串，
        // 放置到新的Message字串上，做完再加上 <br>
        if (index > Position) {
            Message += msg.substring(Position, index);
        }
        Message += "<br>";
        Position = index + 1;
    }

    if (Position >= 0) {
        Message += msg.substring(Position);
    }

    out.println(Message);
%>

</body>
</html>
