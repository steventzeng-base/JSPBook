<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.xml.sax.*" %>
<%@ page import="org.xml.sax.helpers.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="tw.com.javaworld.CH17.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH17 - ParseXML_sax.jsp</title>
</head>
<body>

<h2>�ϥ� JAXP SAX ��R XML ���</h2>
<%	
	SAXParserFactory spf;	
	XMLReader xmlReader;	
	SAXParser saxParser;	
	HashMap hm_TagData;	
	hm_TagData = new HashMap();	    
	
	spf = SAXParserFactory.newInstance();    
	saxParser = spf.newSAXParser();    
	xmlReader = saxParser.getXMLReader();   
	xmlReader.setContentHandler(new MyHandler(hm_TagData));	        	    
	
	xmlReader.parse("http://localhost:8080/JSPBook/CH17/Books.xml");   
%>
<%= hm_TagData.get("title")+" (ISBN�G"+hm_TagData.get("ISBN")+")���@�̬��G"+hm_TagData.get("author")%></br>
<%= hm_TagData.get("title1")+" (ISBN�G"+hm_TagData.get("ISBN1")+")���@�̬��G"+hm_TagData.get("author1")%>

</body>
</html>