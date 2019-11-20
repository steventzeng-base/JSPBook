<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.SAXParser" %>
<%@ page import="javax.xml.parsers.SAXParserFactory" %>
<%@page contentType="text/html;charset=UTF-8" %>

<%
    DocumentBuilderFactory dbfactory = DocumentBuilderFactory.newInstance();
    out.println("DocumentBuilderFactory = " + dbfactory.getClass().getName() + "</br>");

    DocumentBuilder builder = dbfactory.newDocumentBuilder();
    out.println("DocumentBuilder = " + builder.getClass().getName() + "</br>");

    SAXParserFactory spfactory = SAXParserFactory.newInstance();
    out.println("SAXParserFactory = " + spfactory.getClass().getName() + "</br>");

    SAXParser parser = spfactory.newSAXParser();
    out.println("SAXParser = " + parser.getClass().getName() + "</br>");
%>
