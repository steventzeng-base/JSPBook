<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH17 - ParseXML_dom.jsp</title>
</head>
<body>

<h2>�ϥ� JAXP DOM ��R XML ���</h2>

<%	
	try 
	{		
	    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    
	    //��oDocumentBuilder���@�ӹ���		
	    DocumentBuilder builder = factory.newDocumentBuilder();		
	    
	    //�ѪR���A����o�@��Document����		
	    Document doc = builder.parse("http://localhost:8080/JSPBook/CH17/Books.xml");		
	    
	    //��o�ڸ`�I books		
	    Element elmtBooksInfo = doc.getDocumentElement();		
	    
	    //�o��Ҧ�book�`�I		
	    NodeList nlBook = elmtBooksInfo.getElementsByTagName("book");		
	    
	    //�j���X�C�@���Ѫ����		
	    for (int i = 0; i < nlBook.getLength(); i++)		
	    {			
	        //��ebook�`�I����			
	        Element elmtBook = (Element)nlBook.item(i);			
	        NodeList nlCurrent = elmtBook.getElementsByTagName("title");			
	        
	        out.println("�ѦW�G" + ((Element)nlCurrent.item(0)).getFirstChild().getNodeValue() + "</BR>");			
	        out.println("ISBN�G" + ((Element)nlCurrent.item(0)).getAttribute("ISBN") + "</BR>");						
	        
	        nlCurrent = elmtBook.getElementsByTagName("author");						
	        
	        out.println("�@�̡G" + ((Element)nlCurrent.item(0)).getFirstChild().getNodeValue() + "</BR>");			
	        out.println("------------------------------------" + "</BR>");		
	    }	
	}	
	catch (Exception pce)	
	{
	    System.out.println(pce);	
	}
%>

</body>
</html>