<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="test.DbManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MySql Database</title>
</head>
<body>
<table>
<%   
    
DbManager db = new DbManager();
Connection connection = db.getConnection();
if(connection == null)
{
	out.print("Connection not established");
}else
{
	//out.print("Connection Established");
	String query="select * from tablecontent";
	Statement stmt=connection.createStatement();
	ResultSet rs=stmt.executeQuery(query);  
	%>
        
        <tr>
           <th>ID</th>
           <th>Statement</th>
        </tr>
        <%
        while(rs.next())
	{

	%>
        
	<tr>
            <td><%=rs.getInt("id") %></td>
	    <td><%=rs.getString("Statement") %></td>
        </tr>
	 <%}
}
        %>
</table>
</body>
</html>