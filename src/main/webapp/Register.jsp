<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user register</title>
<style>
/* Reset and Base */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: url('css/main.jpg') no-repeat center center/cover;
	color: white;
	min-height: 100vh;
}

/* Container Helper */
.container {
	max-width: 1200px;
	margin: auto;
	padding: 0 20px;
}

/* Header Styling */
header {
	background-color: #1a1a1a;
	color: #fff;
	padding: 20px 0;
	position: sticky;
	top: 0;
	z-index: 1000;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
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
	transition: color 0.3s;
}

header nav ul li a:hover {
	border-bottom: 2px solid #ff6b6b;
}

/* Background Overlay */
.testimonial-background {
	background-color: rgba(0, 0, 0, 0.6);
	backdrop-filter: blur(5px);
	padding: 60px 20px;
	margin: 40px auto;
	max-width: 600px;
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
	text-align: center;
}

/* Headings */
.testimonial-background h2 {
	margin-bottom: 30px;
	color: #ff6b6b;
	font-size: 2rem;
}

/* Form Styling */
form table {
	width: 100%;
}

form label {
	display: block;
	font-weight: 600;
	margin-bottom: 6px;
	color: white;
	text-align: left;
}

form input[type="text"],
form input[type="email"],
form input[type="password"] {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 6px;
	margin-bottom: 16px;
	background-color: #f0f0f0;
	color: #333;
	font-size: 1rem;
}

form input[type="submit"] {
	background-color: #ff6b6b;
	color: white;
	padding: 12px 20px;
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
	padding: 0;
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
	header h1,
	header nav ul {
		float: none;
		text-align: center;
	}

	header nav ul {
		flex-direction: column;
		gap: 10px;
	}

	.testimonial-background {
		padding: 30px 20px;
	}

	form table {
		display: block;
	}
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
                    <li><a href="log.jsp">Book a Ticket</a></li>
                    <li><a href="feedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="useraccount.jsp">User Account</a></li>
                    <li><a href="logoutServlet">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

        <div class="testimonial-background">

	<h2>Create User Account</h2>
  <form action="UserInsertServlet" method="post">
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" required></td>
            </tr>
            <tr>
                <td><label for="gmail">Email:</label></td>
                <td><input type="email" id="gmail" name="gmail"  required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
            <tr>
                <td><label for="phone">Phone:</label></td>
                <td><input type="text" id="phone" name="phone" required></td>
            </tr>
          	<tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
    </div>
      <footer>
        <div class="container">
            <p>&copy; 2024 SeatReserve. All Rights Reserved.</p>
            <ul class="social-links">
                <li><a href="https://www.facebook.com" target="_blank">Facebook</a></li>
                <li><a href="https://www.twitter.com" target="_blank">Twitter</a></li>
                <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
            </ul>
        </div>
    </footer>
    
</body>
</html>