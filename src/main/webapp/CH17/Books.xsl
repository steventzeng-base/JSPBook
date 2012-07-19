<?xml version="1.0" encoding="Big5"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                              xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:output method="html" indent="yes" encoding="Big5"/>
  <xsl:template match="books">	
    <html>		
      <body>		
        <h1>���ˮ��y</h1>		
        <table>		
          <tr>		
            <th>�ѦW</th>		
            <th>ISBN</th>		
            <th>�@��</th>		
          </tr>		
          <xsl:apply-templates/>		
        </table>		
      </body>	
    </html>
  </xsl:template>
  <xsl:template match="book">	
    <tr>		
      <xsl:apply-templates/>	
    </tr>
  </xsl:template>
  <xsl:template match="title">	
    <td>		
      <xsl:apply-templates/>	
    </td>	
    <td>		
      <xsl:value-of select="@ISBN"/>	
    </td>
  </xsl:template>
  <xsl:template match="author">	
    <td>		
      <xsl:apply-templates/>	
    </td>
  </xsl:template>
</xsl:stylesheet>