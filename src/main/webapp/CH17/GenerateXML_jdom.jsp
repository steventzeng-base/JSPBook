<%@ page import="java.io.*" %>
<%@ page import="org.jdom.*" %>
<%@ page import="org.jdom.output.XMLOutputter" %>
<%@ page contentType="text/xml;charset=Big5" %>

<%		
     // �إ߮ڤ��� <books> 	      
     Element rootElement = new Element("books");      
     Document document = new Document(rootElement);                  
     
     // �إߤl����<book>�P���ݩʤΤ��e      
     Element bookElement = new Element("book");            
     rootElement.addContent(bookElement);      
     
     // �إߤl����<title>      
     Element titleElement = new Element("title");      
     titleElement.addContent("JAVA PRIMER");      
     titleElement.setAttribute("ISBN", "A1195");      
     bookElement.addContent(titleElement);      
     
     // �إߤl����<author>      
     Element authorElement = new Element("author");      
     authorElement.addContent("Dr.Lee");      
     bookElement.addContent(authorElement);            
     
     // �إߤl����<book>�P���ݩʤΤ��e      
     Element bookElement2 = new Element("book");            
     rootElement.addContent(bookElement2);      
     
     // �إߤl����<title>      
     Element titleElement2 = new Element("title");      
     titleElement2.addContent("JSP �޳N��U");      
     titleElement2.setAttribute("ISBN", "C8254");      
     bookElement2.addContent(titleElement2);      
     
     // �إߤl����<author>      
     Element authorElement2 = new Element("author");      
     authorElement2.addContent("�W�� �L");      
     bookElement2.addContent(authorElement2);                  
     
     // ��XXML���      
     XMLOutputter outputter = new XMLOutputter();      
     
     // �]�w�s�X      
     outputter.setEncoding("Big5");      
     
     // �]�w��l�ɬO�_����M�Y��      
     outputter.setNewlines(true);      
     outputter.setIndent(true);      
     outputter.output(document, out); 
%>

