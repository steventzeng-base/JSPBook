<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH14 - Proxool.jsp</title>
</head>
<body>

<h2>使用 Proxool Connection Pool</h2>

<%
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    String new_last_name = "";
    String new_first_name = "";

    try {

        Class.forName("org.logicalcobwebs.proxool.ProxoolDriver");
        con = DriverManager.getConnection("proxool.JSPBook:com.mysql.jdbc.Driver:jdbc:mysql://localhost:3306/sample_db?user=root&password=browser&useUnicode=true&characterEncoding=UTF-8");
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String query = "SELECT * FROM employee";
        rs = stmt.executeQuery(query);

        while (rs.next()) {
            new_last_name = rs.getString("last_name");
            new_first_name = rs.getString("first_name");
%>
從 employee 取出姓名：<%= new_last_name + new_first_name %><br>
<%
        }

        stmt.close();
        con.close();
    } catch (SQLException sqle) {
        out.println("sqle=" + sqle);
    } finally {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException sqle) {
            out.println("sqle=" + sqle);
        }
    }

%>

</body>
</html>
