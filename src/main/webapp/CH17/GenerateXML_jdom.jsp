<%@ page import="org.jdom.*" %>
<%@ page import="org.jdom.output.XMLOutputter" %>
<%@ page contentType="text/xml;charset=UTF-8" %>

<%
    // 建立根元素 <books>
    Element rootElement = new Element("books");
    Document document = new Document(rootElement);

    // 建立子元素<book>與其屬性及內容
    Element bookElement = new Element("book");
    rootElement.addContent(bookElement);

    // 建立子元素<title>
    Element titleElement = new Element("title");
    titleElement.addContent("JAVA PRIMER");
    titleElement.setAttribute("ISBN", "A1195");
    bookElement.addContent(titleElement);

    // 建立子元素<author>
    Element authorElement = new Element("author");
    authorElement.addContent("Dr.Lee");
    bookElement.addContent(authorElement);

    // 建立子元素<book>與其屬性及內容
    Element bookElement2 = new Element("book");
    rootElement.addContent(bookElement2);

    // 建立子元素<title>
    Element titleElement2 = new Element("title");
    titleElement2.addContent("JSP 技術手冊");
    titleElement2.setAttribute("ISBN", "C8254");
    bookElement2.addContent(titleElement2);

    // 建立子元素<author>
    Element authorElement2 = new Element("author");
    authorElement2.addContent("上傑 林");
    bookElement2.addContent(authorElement2);

    // 輸出XML文件
    XMLOutputter outputter = new XMLOutputter();

    // 設定編碼
    outputter.setEncoding("UTF-8");

    // 設定原始檔是否換行和縮排
    outputter.setNewlines(true);
    outputter.setIndent(true);
    outputter.output(document, out);
%>

