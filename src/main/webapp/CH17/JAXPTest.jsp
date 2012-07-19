<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="org.xml.sax.*" %>
<%@page contentType="text/html;charset=Big5" %>

<%		
	DocumentBuilderFactory dbfactory = DocumentBuilderFactory.newInstance();
	out.println("DocumentBuilderFactory = " + dbfactory.getClass().getName() + "</br>");
	
	DocumentBuilder builder = dbfactory.newDocumentBuilder();
	out.println("DocumentBuilder = " + builder.getClass().getName() + "</br>");
	
	SAXParserFactory spfactory = SAXParserFactory.newInstance();
	out.println("SAXParserFactory = " + spfactory.getClass().getName()+ "</br>");
	
	SAXParser parser = spfactory.newSAXParser();
	out.println("SAXParser = " + parser.getClass().getName()+ "</br>");
%>