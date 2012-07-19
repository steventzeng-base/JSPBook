<%@ tag pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag import="java.util.Date,java.text.DateFormat" %>
<%@ variable name-given="fullDate" %>
<%@ variable name-given="longDate" %>
<%@ variable name-given="mediumDate" %>
<%@ variable name-given="shortDate" scope="AT_END" %>
<%
  Date now = new Date(System.currentTimeMillis());
  DateFormat fullFormat = DateFormat.getDateInstance(DateFormat.FULL);
  DateFormat longFormat = DateFormat.getDateInstance(DateFormat.LONG);
  DateFormat mediumFormat = DateFormat.getDateInstance(DateFormat.MEDIUM); 
  DateFormat shortFormat = DateFormat.getDateInstance(DateFormat.SHORT);
  jspContext.setAttribute("fullDate", fullFormat.format(now));
  jspContext.setAttribute("longDate", longFormat.format(now));
  jspContext.setAttribute("mediumDate", mediumFormat.format(now));
  jspContext.setAttribute("shortDate", shortFormat.format(now));
%>
<jsp:doBody/>