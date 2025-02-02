<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

/* Reset some default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body and general layout */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    line-height: 1.6;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

/* Header styles */
header {
    text-align: center;
    margin-bottom: 30px;
}

header h1 {
    font-size: 36px;
    color: #2c3e50;
}

header p {
    font-size: 18px;
    color: #7f8c8d;
}

/* Room section styles */
.room {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 40px;
}

.room-image {
    flex: 1;
    max-width: 48%;
}

.room-image img {
    width: 100%;
    height: auto;
    border-radius: 8px;
}

.room-details {
    flex: 1;
    max-width: 48%;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.room-details h2 {
    font-size: 28px;
    margin-bottom: 10px;
    color: #2c3e50;
}

.room-details p {
    font-size: 16px;
    margin-bottom: 15px;
}

.room-details .book-btn {
    background-color: #27ae60;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.room-details .book-btn:hover {
    background-color: #2ecc71;
}

/* Footer styles */
footer {
    text-align: center;
    font-size: 14px;
    color: #7f8c8d;
}



</style>



</head>

<body>
	<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1.0">
    <title>Hotel Lodging</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to  Hotel Sai Paris</h1>
            <p>Your perfect getaway experience awaits!</p>
        </header>

        <section class="room">
            <div class="room-image">
                <img src="r1.png" alt="Deluxe Room">
            </div>
            <div class="room-details">
                <h2>Deluxe Room</h2>
                <p>Enjoy a luxurious stay with a king-size bed, spacious bathroom, and a stunning view.</p>
                <p>
					<strong>Price: 1200 per night</strong>
				</p>
                <button class="book-btn">Book Now</button>
            </div>
        </section>
       
        <div class="container">

        <section class="room">
            <div class="room-image">
                <img src="r2.jpg" alt="Deluxe Room">
            </div>
            <div class="room-details">
                <h2>Deluxe Room</h2>
                <p>Enjoy a luxurious stay with a king-size bed, spacious bathroom, and a stunning view.</p>
                <p>
					<strong>Price: 1400 per night</strong>
				</p>
                <button class="book-btn">Book Now</button>
            </div>
        </section>

 <div class="container">

        <section class="room">
            <div class="room-image"> 
                <img src="r3.png" alt="Deluxe Room">
            </div>
            <div class="room-details">
                <h2>Deluxe Room</h2>
                <p>Enjoy a luxurious stay with a king-size bed, spacious bathroom, and a stunning view.</p>
                <p>
					<strong>Price: 1800 per night</strong>
				</p>
                <button class="book-btn">Book Now</button>
            </div>
        </section>

        

        <footer>
            <p>&copy; 2025 Luxury Hotel. All Rights Reserved.</p>
        </footer>
    </div>
</body>
</html>




</body>
</html>