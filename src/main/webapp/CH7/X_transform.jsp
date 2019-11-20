<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<c:set var="xml">
    <document>
        <header>XML搭配XSLT</header>
        <paragraph>讓我們把xml用xslt轉換後顯示在網頁上</paragraph>
    </document>
</c:set>

<c:set var="xsl">
    <?xml version="1.0" encoding="UTF-8" ?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
            <xsl:apply-templates/>
        </xsl:template>
        <xsl:template match="document">
            <html>
            <title>CH7 - X_transform.jsp</title>
            <h2>&lt;x:transform&gt; 的使用</h2>
            <xsl:apply-templates/>
            </html>
        </xsl:template>
        <xsl:template match="header">
            <h1><xsl:value-of select="."/></h1>
        </xsl:template>
        <xsl:template match="paragraph">
            <p><xsl:value-of select="."/></p>
        </xsl:template>
    </xsl:stylesheet>
</c:set>
<x:transform doc="${xml}" xslt="${xsl}"/>
