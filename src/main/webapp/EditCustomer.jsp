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

int m = Integer.parseInt(request.getParameter("id"));

Class.forName("org.postgresql.Driver");
Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hotel","postgres","Sarthak");
PreparedStatement ps=con.prepareStatement("select * from custo_regi where id='"+m+"'");
ResultSet rs=ps.executeQuery();
rs.next();

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Registration Form</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <form action="UpdateInfo.jsp" method="post">
            <h2>Hotel Registration</h2>
            
            
			
            <input type="hidden" id="id" name="id" value="<%=rs.getInt(1) %>" required>

            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" value="<%=rs.getString(2) %>" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%=rs.getString(3) %>" required>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="number" value="<%=rs.getString(4) %>" required>

            <label for="checkinDate">Check-in Date:</label>
            <input type="date" id="checkinDate" name="check_in_date" value="<%=rs.getString(5) %>" required>
            
             <label for="checkoutDate">Check-out Date:</label>
            <input type="date" id="checkoutDate" name="check_out_date" value="<%=rs.getString(6) %>" required>

            <label for="Number of person:">Number of person:</label>
            <input type="number" id="numberofperson" name="number_of_person" value="<%=rs.getString(7) %>" min="0" required>
           
            <button type="submit">Update Information</button>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    padding: 40px;
    width: 100%;
    max-width: 500px;
}

h2 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #555;
}

input {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
}

input:focus {
    outline: none;
    border-color: #4CAF50;
}

button {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

@media (max-width: 600px) {
    .container {
        padding: 20px;
    }

    h2 {
        font-size: 24px;
    }

    input, button {
        font-size: 14px;
        padding: 12px;
    }
}
</style>



</body>
</html>