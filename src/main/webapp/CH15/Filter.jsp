<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tlds/MyTaglib.tld" prefix="mytag" %>

<html>
<head>
    <title>CH15 - Filter.jsp</title>
</head>
<body>

<h2>filter 標籤</h2>

請按下列連結，將會把下面的 HTML 原始碼顯示出來<br>
<a href="Filter.jsp?Filter=Filter">Filter</a><br><br>

<mytag:filter>

    <strong>範例程式三</strong><br>
    <em>範例程式三</em><br>
    <sub>範例程式三</sub><br>

    <pre>範例程式三</pre>
    <br>
    <font color=red>
        <h3>範例程式三</h3>
    </font>

</mytag:filter>

</body>
</html>
