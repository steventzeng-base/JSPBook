<%@ page contentType="text/html;charset=Big5" %>
<%@ taglib uri="/WEB-INF/tlds/MyTaglib.tld" prefix="mytag" %>

<html>
<head>
  <title>CH15 - Filter.jsp</title>
</head>
<body>

<h2>filter ����</h2>

�Ы��U�C�s���A�N�|��U���� HTML ��l�X��ܥX��<br>
<a href="Filter.jsp?Filter=Filter">Filter</a><br><br>

<mytag:filter>

<strong>�d�ҵ{���T</strong><br>
<em>�d�ҵ{���T</em><br>
<sub>�d�ҵ{���T</sub><br>

<pre>�d�ҵ{���T</pre><br>
<font color=red>
  <h3>�d�ҵ{���T</h3>
</font>

</mytag:filter>

</body>
</html>