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
int a;
String b,c,d,e,f,g;
a=Integer.parseInt(request.getParameter("id"));
b=request.getParameter("name");
c=request.getParameter("email");
d=request.getParameter("number");
e=request.getParameter("check_in_date");
f=request.getParameter("check_out_date");
g=request.getParameter("number_of_person");

Class.forName("org.postgresql.Driver");
Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hotel","postgres","Sarthak");
PreparedStatement ps=con.prepareStatement("update custo_regi set name='"+b+"', email='"+c+"',number='"+d+"',check_in_date='"+e+"',check_out_date='"+f+"',number_of_person='"+g+"' where id='"+a+"'");
ps.executeUpdate();

out.println("<script>");
out.println("alert('Record Update')");
out.println("window.location.href='Viewcustomer.jsp'");
out.println("</script>");

%>

</body>
</html>