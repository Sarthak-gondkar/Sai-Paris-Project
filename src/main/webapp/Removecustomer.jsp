<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.sql.*"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String p=request.getParameter("name");



Class.forName("org.postgresql.Driver");

Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hotel","postgres","Sarthak");
PreparedStatement ps=con.prepareStatement("delete from custo_regi where name= '"+p+"'   ");
ps.executeUpdate();

out.println("<script>");
out.println("alert('Customer Suessfully Remove')");
out.println("window.location.href='Viewcustomer.jsp'");

out.println("</script>");

%>

</body>
</html>