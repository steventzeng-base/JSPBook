<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%@ page contentType="text/html;charset=Big5" %>

<html>
<head>
  <title>CH14 - Mysql_jndi.jsp</title>
</head>
<body>

<h2>�N��Ʀs�J Mysql ��</h2>

<%
	Connection con = null;	
	Statement stmt = null;	
	Statement stmt1 = null;	
	ResultSet rs = null;
	
	request.setCharacterEncoding("MS950");
	
	String employee_id = null;	
	String last_name = request.getParameter("last_name");	
	String first_name = request.getParameter("first_name");     
	String birth = "1978/12/11";	
	String sex = "F";	
	String email = "aaa@asdf.com";

	String new_last_name = "";
	String new_first_name = "";	
%>

	�q mysql.htm �����쪺��Ʀp�U�G<br>	
	�m�G<%= last_name %>	
	�W�G<%= first_name %><br><br>
	
<%		
	try	
	{		
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/sample_db");
		con = ds.getConnection();
		stmt = con.createStatement();	
	
	
		String upd = "INSERT INTO employee(employee_id, last_name, first_name, birth, sex, email) VALUES ("+employee_id+", '"+last_name+"', '"+first_name+"', '"+birth+"', '"+sex+"', '"+email+"')";     
	
		stmt.executeUpdate(upd);     
		stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);	
		String query = "SELECT * FROM employee";	
		rs = stmt1.executeQuery(query);	
	
		rs.last( );			
		new_last_name = rs.getString("last_name");	
		new_first_name = rs.getString("first_name");
	
	}	
	catch(SQLException sqle)
	{
		out.println("sqle="+sqle);	
	}
	finally
	{
		try {
			if(con != null)
			{
				con.close();
			}		
		}
		catch(SQLException sqle)
		{
			out.println("sqle="+sqle);	
		}
	}
%>

	�q employee ���X�̷s�s�W���m�W�G<br>		
	�s�W�m�W�G<%= new_last_name+new_first_name %><br>

</body>
</html>