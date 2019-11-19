<%@ page import="java.io.*" %>
<%@ page import="org.xml.sax.*" %>
<%@ page import="org.xml.sax.helpers.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.sax.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page contentType="text/xml;charset=UTF-8" %>

<%
	String[] isbn = {"A1195","C8254"};
	String[] title = {"JAVA PRIMER","JSP 技術手冊"};
	String[] author = {"Dr.Lee","上傑 林"};
	SAXTransformerFactory tf = (SAXTransformerFactory)SAXTransformerFactory.newInstance();
	TransformerHandler transformerH = tf.newTransformerHandler();
	Transformer serializer = transformerH.getTransformer();
	serializer.setOutputProperty(OutputKeys.ENCODING,"UTF-8");
	StreamResult streamResult = new StreamResult(out);
	transformerH.setResult(streamResult);
	transformerH.startDocument();
	AttributesImpl atts = new AttributesImpl();
	transformerH.startElement("","","books",atts);

	for (int i=0;i<title.length;i++)
	{
	  transformerH.startElement("","","book",atts);
	  atts.addAttribute("","","ISBN","CDATA",isbn[i]);
	  transformerH.startElement("","","title",atts);
	  atts.clear();
	  transformerH.characters(title[i].toCharArray(),0,title[i].length());
	  transformerH.endElement("","","title");
	  transformerH.startElement("","","author",atts);
	  transformerH.characters(author[i].toCharArray(),0,author[i].length());
	  transformerH.endElement("","","author");
	  transformerH.endElement("","","book");
	}

	transformerH.endElement("","","books");
	transformerH.endDocument();
%>
