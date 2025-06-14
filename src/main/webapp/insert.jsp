<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
user register</title>
<style>
 /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    line-height: 1.6;
}

/* Container */
.container {
    max-width: 1200px;
    margin: auto;
    padding: 0 20px;
}

/* Header Styles */
header {
    background-color: #1a1a1a;
    color: #fff;
    padding: 20px 0;
    position: sticky;
    top: 0;
    z-index: 1000;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

header h1 {
    float: left;
    margin-left: 20px;
    font-size: 24px;
}

header nav ul {
    list-style: none;
    display: flex;
    justify-content: flex-end;
    margin-right: 20px;
}

header nav ul li {
    margin-left: 25px;
}

header nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: 500;
}

header nav ul li a:hover {
    border-bottom: 2px solid #ff6b6b;
}

/* Feedback Section */
.testimonial-background {
    background: url('css/main.jpg') no-repeat center center/cover;
    padding: 100px 20px;
    position: relative;
    color: #fff;
}

.testimonial-background::before {
    content: '';
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 1;
}

main {
    position: relative;
    z-index: 2;
}


/* Form Wrapper */
.form-wrapper {
    background-color: rgba(255, 255, 255, 0.1);
    max-width: 600px;
    margin: 50px auto;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.form-wrapper h2 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 2rem;
    color: #ff6b6b;
}

/* Form Table Styling */
form table {
    width: 100%;
}

form td {
    padding: 10px;
    vertical-align: top;
}

/* Input and Label Styling */
form input[type="text"],
form input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    border: 1px solid #ccc;
    border-radius: 6px;
    background-color: #f9f9f9;
    color: #333;
    font-size: 1rem;
}

form label {
    font-weight: 600;
    color: #fff;  /* Set label text color to white */
}


/* Submit Button */
form input[type="submit"] {
    background-color: #ff6b6b;
    color: white;
    padding: 12px 25px;
    border: none;
    border-radius: 6px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form input[type="submit"]:hover {
    background-color: #e55353;
}

/* Footer */
footer {
    background-color: #1a1a1a;
    color: #eee;
    text-align: center;
    padding: 30px 20px;
    margin-top: 60px;
}

footer .social-links {
    list-style: none;
    display: flex;
    justify-content: center;
    margin-top: 15px;
}

footer .social-links li {
    margin: 0 15px;
}

footer .social-links li a {
    color: #ddd;
    text-decoration: none;
    transition: color 0.3s ease;
}

footer .social-links li a:hover {
    color: #ff6b6b;
}

/* Responsive */
@media (max-width: 768px) {
    header h1, header nav ul {
        float: none;
        text-align: center;
    }

    header nav ul {
        flex-direction: column;
        gap: 10px;
    }

    .form-wrapper {
        padding: 20px;
    }

 
    
</style>


</head>
<body>
    <header>
        <div class="container">
            <h1>SeatReserve</h1>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="aasss">Book a Ticket</a></li>
                    <li><a href="inserfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="Register.jsp">Register</a></li>
                </ul>
            </nav>
        </div>
    </header>
        <div class="testimonial-background">
    <main>
   <div class="form-wrapper">
	<h2>Create User Profile</h2>
  <form action="InsertServlet" method="post">
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" required></td>
            </tr>
            <tr>
                <td><label for="price">Price:</label></td>
                <td><input type="number" id="price" name="price"  required></td>
            </tr>
            <tr>
                <td><label for="category">Category:</label></td>
                <td><input type="text" id="category" name="category" required></td>
            </tr>
            <tr>
                <td><label for="quantity">Quantity:</label></td>
                <td><input type="number" id="quantity" name="quantity" required></td>
            </tr>
            <tr>
                <td><label for="description">Description:</label></td>
                <td><input type="text" id="description" name="description" required></input></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
    </div>
    </main>
    </div>
       <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2024 SeatReserve. All rights reserved.</p>
            <ul class="social-links">
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">Instagram</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>