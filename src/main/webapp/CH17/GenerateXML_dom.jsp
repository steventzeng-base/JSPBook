<%@ page import="java.io.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.dom.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page contentType="text/xml;charset=Big5" %>

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
     
     String[] isbn = {"A1195","C8254"};	
     String[] title = {"JAVA PRIMER","JSP 技術手冊"};	
     String[] author = {"Dr.Lee","上傑 林"};	
     
     for (int i=0;i<title.length;i++)	
     {  		
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
     Transformer serializer = tf.newTransformer();	
     
     serializer.setOutputProperty(OutputKeys.ENCODING,"Big5");	
     serializer.transform(domSource, streamResult); 
%>
