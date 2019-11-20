<%@ page import="org.jdom.*" %>
<%@ page import="org.jdom.input.*" %>
<%@ page import="java.util.Iterator,java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH17 - ParseXML_jdom.jsp</title>
</head>
<body>

<h2>使用 JDOM 剖析 XML 文件</h2>

<%
    Element bookElement;
    Element titleElement;
    Element authorElement;

    // 建立 SAXBulder
    SAXBuilder builder = new SAXBuilder(false);

    // 建立 JODM文件
    Document doc = builder.build("http://localhost:8080/JSPBook/CH17/Books.xml");

    Element rootElement = doc.getRootElement();
    List books = rootElement.getChildren("book");
    Iterator i = books.iterator();

    while (i.hasNext()) {
        bookElement = (Element) i.next();
        titleElement = bookElement.getChild("title");
        authorElement = bookElement.getChild("author");
        String ISBN = titleElement.getAttributeValue("ISBN");

        out.println("書名：" + titleElement.getText() + "</BR>");
        out.println("ISBN：" + ISBN + "</BR>");
        out.println("作者：" + authorElement.getText() + "</BR>");
        out.println("------------------------------------" + "</BR>");
    }
%>

</body>
</html>
