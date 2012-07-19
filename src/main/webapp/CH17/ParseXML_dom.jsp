<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=MS950" %>

<html>
<head>
  <title>CH17 - ParseXML_dom.jsp</title>
</head>
<body>

<h2>使用 JAXP DOM 剖析 XML 文件</h2>

<%	
	try 
	{		
	    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    
	    //獲得DocumentBuilder的一個實體		
	    DocumentBuilder builder = factory.newDocumentBuilder();		
	    
	    //解析文件，並獲得一個Document實體		
	    Document doc = builder.parse("http://localhost:8080/JSPBook/CH17/Books.xml");		
	    
	    //獲得根節點 books		
	    Element elmtBooksInfo = doc.getDocumentElement();		
	    
	    //得到所有book節點		
	    NodeList nlBook = elmtBooksInfo.getElementsByTagName("book");		
	    
	    //迴圈輸出每一本書的資料		
	    for (int i = 0; i < nlBook.getLength(); i++)		
	    {			
	        //當前book節點標籤			
	        Element elmtBook = (Element)nlBook.item(i);			
	        NodeList nlCurrent = elmtBook.getElementsByTagName("title");			
	        
	        out.println("書名：" + ((Element)nlCurrent.item(0)).getFirstChild().getNodeValue() + "</BR>");			
	        out.println("ISBN：" + ((Element)nlCurrent.item(0)).getAttribute("ISBN") + "</BR>");						
	        
	        nlCurrent = elmtBook.getElementsByTagName("author");						
	        
	        out.println("作者：" + ((Element)nlCurrent.item(0)).getFirstChild().getNodeValue() + "</BR>");			
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