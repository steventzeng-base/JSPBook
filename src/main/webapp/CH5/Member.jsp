<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - Member.jsp</title>
</head>
<body>

<h2>javax.servlet.http.HttpSession - session 物件</h2>
<%
    String Login = (String) session.getAttribute("Login");

    if (Login != null && Login.equals("OK")) {
        out.println("歡迎進入");
        session.invalidate();
    } else {
        out.println("請先登入謝謝");
        out.println("<br>經過五秒之後，網頁會自動反回Login.jsp");

        response.setHeader("Refresh", "5;URL=Login.jsp");
    }
%>

</body>
</html>
