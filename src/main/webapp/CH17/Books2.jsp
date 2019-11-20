<%@ page import="javax.xml.transform.OutputKeys" %>
<%@ page import="javax.xml.transform.Source" %>
<%@ page import="javax.xml.transform.Transformer" %>
<%@ page import="javax.xml.transform.TransformerFactory" %>
<%@ page import="javax.xml.transform.stream.StreamResult" %>
<%@ page import="javax.xml.transform.stream.StreamSource" %>

<%@page contentType="text/html;charset=UTF-8" %>

<%
    StreamResult streamResult = new StreamResult(out);
    TransformerFactory tf = TransformerFactory.newInstance();

    Source xslSource = new StreamSource("http://localhost:8080/JSPBook/CH17/Books.xsl");
    Transformer serializer = tf.newTransformer(xslSource);

    serializer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
    serializer.transform(new StreamSource("http://localhost:8080/JSPBook/CH17/Books.xml"), streamResult);
%>
