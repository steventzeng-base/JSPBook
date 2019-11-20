<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>CH14 - Mysql.jsp</title>
</head>
<body>

<h2>將資料存入 Mysql 中</h2>

<%
    Connection con = null;
    Statement stmt = null;
    Statement stmt1 = null;
    ResultSet rs = null;

    request.setCharacterEncoding("UTF-8");

    String employee_id = null;
    String last_name = request.getParameter("last_name");
    String first_name = request.getParameter("first_name");
    String birth = "1978/12/11";
    String sex = "F";
    String email = "aaa@asdf.com";

    String new_last_name = "";
    String new_first_name = "";
%>

從 mysql.html 接收到的資料如下：<br>
姓：<%= last_name %>
名：<%= first_name %><br><br>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample_db?user=root&password=browser&useUnicode=true&characterEncoding=UTF-8");
        stmt = con.createStatement();

        String upd = "INSERT INTO employee(employee_id, last_name, first_name, birth, sex, email) VALUES (" + employee_id + ", '" + last_name + "', '" + first_name + "', '" + birth + "', '" + sex + "', '" + email + "')";

        stmt.executeUpdate(upd);
        stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String query = "SELECT * FROM employee";
        rs = stmt1.executeQuery(query);

        rs.last();
        new_last_name = rs.getString("last_name");
        new_first_name = rs.getString("first_name");

        stmt.close();
        stmt1.close();
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

從 employee 取出最新新增的姓名：<br>
新增姓名：<%= new_last_name + new_first_name %><br>

</body>
</html>
