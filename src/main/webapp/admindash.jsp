<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f1f1f1;
    text-align: center;
    height: 100%; /* Ensure full height */
}

html {
    height: 100%; /* Ensure full height */
}

/* Fix the background image for the entire page */
body {
    position: relative;
}

body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('./sai.jpg.jpg');
    background-size: cover; /* Ensures the background image covers the entire page */
    background-position: center; /* Centers the image */
    background-attachment: fixed; /* Makes the background image stay fixed */
    opacity: 0.3; /* Reduces opacity of the background image */
    z-index: -1; /* Places the background behind the content */
}

.sidebar {
    height: 100vh;
    width: 180px;
    min-width: 150px;
    max-width: 400px;
    position: fixed;
    top: 0;
    left: 0;
    background-color: #333;
    color: #fff;
    padding-top: 20px;
    overflow-y: auto;
    transition: width 0.3s ease;
    padding-inline: 8px;
    z-index: 1; /* Ensure sidebar is above the background */
}

.sidebar ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.sidebar ul li {
    padding: 20px;
    border-bottom: 1px solid #555;
}

.sidebar ul li a {
    color: #fff;
    text-decoration: none;
}

.sidebar ul li a:hover {
    background-color: #555;
}




}
</style>
</head>
<body>

    <div class="sidebar" id="sidebar">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="Viewcustomer.jsp">View Customer</a></li>
            <li><a href="index.html#go">Contact</a></li>
        </ul>
    </div>

    
</body>
</html>
