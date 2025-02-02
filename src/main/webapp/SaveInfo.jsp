<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"  %>
    <%@ page import = "java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String a,b,c,d,e,f;

a=request.getParameter("name");
b=request.getParameter("email");
c=request.getParameter("phone");
d=request.getParameter("checkinDate");
e=request.getParameter("checkoutDate");
f=request.getParameter("numberofperson");


Class.forName("org.postgresql.Driver");

Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hotel","postgres","Sarthak");

//String ra=UUID.randomUUID().toString();

PreparedStatement ps=con.prepareStatement("insert into custo_regi(name,email,number,check_in_date,check_out_date,number_of_person) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
ps.executeUpdate();

out.println("<script>");

out.println("alert('Room booking Suessfully')");
out.println("window.location.href='index.html'");

out.println("</script>");

%>
</body>
</html>