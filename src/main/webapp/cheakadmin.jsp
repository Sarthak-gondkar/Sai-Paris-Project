<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String x,y;
x=request.getParameter("adminname");
y=request.getParameter("adminpassword");

if(x.equals("Sarthak") && y.equals("Sarthak@123"))
{
	
	out.println("<script>");
	out.println("alert('login Suessfully')");
	out.println("window.location.href='admindash.jsp'");
	
	out.println("</script>");
}

else
{
	out.println("<script>");
	out.println("alert('login failed')");
	out.println("window.location.href='Adminlogin.jsp'");
	
	out.println("</script>");
}

%>
</body>
</html>