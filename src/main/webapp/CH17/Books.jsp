<%@ page import="org.w3c.dom.DOMImplementation" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.Node" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.transform.OutputKeys" %>
<%@ page import="javax.xml.transform.Source" %>
<%@ page import="javax.xml.transform.Transformer" %>
<%@ page import="javax.xml.transform.TransformerFactory" %>
<%@ page import="javax.xml.transform.dom.DOMSource" %>
<%@ page import="javax.xml.transform.stream.StreamResult" %>
<%@ page import="javax.xml.transform.stream.StreamSource" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%
    Document xmldoc = null;
    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
    DocumentBuilder builder = factory.newDocumentBuilder();
    DOMImplementation impl = builder.getDOMImplementation();

    Element book_e = null;
    Element title_e = null;
    Element author_e = null;
    Node n1 = null;
    Node n2 = null;

    xmldoc = impl.createDocument(null, "books", null);
    Element root = xmldoc.getDocumentElement();

    String[] isbn = {"A1195", "C8254"};
    String[] title = {"JAVA PRIMER", "JSP 技術手冊"};
    String[] author = {"Dr.Lee", "上傑 林"};

    for (int i = 0; i < title.length; i++) {
        book_e = xmldoc.createElementNS(null, "book");
        title_e = xmldoc.createElementNS(null, "title");
        author_e = xmldoc.createElementNS(null, "author");
        title_e.setAttributeNS(null, "ISBN", isbn[i]);

        n1 = xmldoc.createTextNode(title[i]);
        n2 = xmldoc.createTextNode(author[i]);

        title_e.appendChild(n1);
        author_e.appendChild(n2);
        book_e.appendChild(title_e);
        book_e.appendChild(author_e);

        root.appendChild(book_e);
    }

    DOMSource domSource = new DOMSource(xmldoc);
    StreamResult streamResult = new StreamResult(out);
    TransformerFactory tf = TransformerFactory.newInstance();
    Source xslSource = new StreamSource("http://localhost:8080/JSPBook/CH17/Books.xsl");
    Transformer serializer = tf.newTransformer(xslSource);

    serializer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
    serializer.transform(domSource, streamResult);
%>
