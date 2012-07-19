<%@ page import="org.jdom.*" %>
<%@ page import="org.jdom.input.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH17 - ParseXML_jdom.jsp</title>
</head>
<body>

<h2>�ϥ� JDOM ��R XML ���</h2>

<%	
	Element bookElement;	
	Element titleElement;
	Element authorElement;	
	
	// �إ� SAXBulder	
	SAXBuilder builder = new SAXBuilder(false);		
	
	// �إ� JODM���	
	Document doc = builder.build("http://localhost:8080/JSPBook/CH17/Books.xml");                
	
	Element rootElement = doc.getRootElement();   	
	List books = rootElement.getChildren("book");		
	Iterator i = books.iterator();     		
	
	while (i.hasNext()) 
	{
	   bookElement = (Element) i.next();	      
	   titleElement = bookElement.getChild("title");	      
	   authorElement = bookElement.getChild("author");	      
	   String ISBN = titleElement.getAttributeValue("ISBN");	      
	   
	   out.println("�ѦW�G" + titleElement.getText() + "</BR>");	      
	   out.println("ISBN�G" + ISBN + "</BR>");		      
	   out.println("�@�̡G" + authorElement.getText() + "</BR>");	      
	   out.println("------------------------------------" + "</BR>");    	
	}
%>

</body>
</html>