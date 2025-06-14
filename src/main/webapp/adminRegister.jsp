<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


	<h2>Register</h2>
  <form action="adminInsertServlet" method="post">
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