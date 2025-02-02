<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="admindash.jsp" %>
    <%@ page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
.table
{
margin-left: 381px;
margin-right: 50%;
margin-top:400px;
display:flex;
</style>
</head>
<body>
<center>
<table border="0px" class="table" width="900px" height="100px">
<tr>
<th>ID</th>
<th>Name</th>
<th>Mobile</th>
<th>Email</th>
<th>Cheack in date</th>
<th>Cheack out date</th>
<th>Number of person</th>
<th>Action</th>


</tr>

<h2>Display customer information</h2>
<%

Class.forName("org.postgresql.Driver");

Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hotel","postgres","Sarthak");

PreparedStatement ps=con.prepareStatement("select * from custo_regi");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	%>
	
	<tr>
	
	<td><%=rs.getInt(1) %></td>				
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><%=rs.getString(7) %></td>
	<td>
	
	<a href="EditCustomer.jsp?id=<%=rs.getInt(1) %>" class="btn btn-primary">Edit Customer</a>
	<a href="Removecustomer.jsp?name=<%=rs.getString(2) %>" class="btn btn-danger">Remove Customer</a>
	</td>
	
	
	</tr>
	
	<%
	
}




%>
</table></center>
</body>
</html>