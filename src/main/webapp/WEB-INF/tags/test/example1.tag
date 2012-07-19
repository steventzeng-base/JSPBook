<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ variable name-from-attribute="var" alias="result" scope="AT_BEGIN" %>
<%@ attribute name="var" required="true" rtexprvalue="false" %>

4¡E${x}<br>
4¡E${result}<br>
<c:set var="x" value="ignored" />
<c:set var="result" value="2" />
<jsp:doBody />

5¡E${x}<br>
5¡E${result}<br>
<c:set var="x" value="still_ignored" />
<c:set var="result" value="4" />
