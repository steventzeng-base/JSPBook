<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ variable name-given="x" scope="AT_BEGIN" %>
4�E${x}<br>
<c:set var="x" value="2"/>
<jsp:doBody/>

5�E${x}<br>
<c:set var="x" value="4"/>
