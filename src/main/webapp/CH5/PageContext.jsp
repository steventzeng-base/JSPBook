<%@ page import="java.util.Enumeration" contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH5 - PageContext.jsp</title>
</head>
<body>

<h2>javax.servlet.jsp.PageContext - pageContext 物件</h2>

<%
    Enumeration
    enum
    =
    pageContext
    .
    getAttributeNamesInScope
    (
    PageContext
    .
    APPLICATION_SCOPE
    )
    ;
    while
    (
    enum
    .
    hasMoreElements
    (
    )
    )
    {
    out
    .
    println
    (
    "application attribute："
    +
    enum
    .
    nextElement
    (
    )
    +
    "<br>"
    )
    ;
    }
%>

</body>
</html>
