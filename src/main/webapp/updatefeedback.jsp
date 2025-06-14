<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Feedback</title>
<style>
/* ===== Reset & Base ===== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #1f1f1f;
    color: #f0f0f0;
    line-height: 1.6;
}

.tablesection {
    background: url('css/main.jpg') no-repeat center center;
    background-size: cover;
    padding: 100px 20px;
    border-radius: 10px;
    margin: auto auto;
    max-width: 20000px;
    color: #fff;
    position: relative;
    z-index: 1;
}

/* Optional: add overlay for better text readability */
.table-section::before {
    content: "";
    background-color: rgba(0, 0, 0, 0.5); /* dark transparent overlay */
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    z-index: -1;
    border-radius: 10px;
}


/* ===== Container ===== */
.container {
    max-width: 1200px;
    margin: auto;
    padding: 0 20px;
}

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


/* ===== Headings ===== */
h2 {
    text-align: center;
    margin: 30px 0 20px;
    font-size: 30px;
    color: #ffffff;
}

/* ===== Search Input ===== */
#searchInput {
    display: block;
    margin: 0 auto 25px;
    padding: 10px 15px;
    width: 300px;
    border: none;
    border-radius: 6px;
    background-color: #2c2c2c;
    color: #f0f0f0;
}

/* ===== Table Styles ===== */
table {
    width: 70%;
    margin: auto;
    border-collapse: collapse;
    background-color: #2a2a2a;
    border-radius: 10px;
    overflow: hidden;
}

th, td {
    padding: 15px;
    text-align: center;
    border-bottom: 1px solid #3d3d3d;
}

th {
    background-color: #3a3a3a;
    color: #ffffff;
    font-weight: bold;
}

tr:hover {
    background-color: #444444;
}

/* ===== Buttons ===== */
button {
    background-color: #ff6b6b;
    color: #ffffff;
    border: none;
    padding: 8px 8px;
    border-radius: 5px;
    cursor: pointer;
    margin: 4px 2px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #e45757;
}
.form-wrapper {
    background-color: rgba(255, 255, 255, 0.1);
    max-width: 600px;
    margin: 0 auto;
    padding: 40px;
    border-radius: 12px;
    backdrop-filter: blur(5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.form-wrapper h2 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 2rem;
    color: #ff6b6b;
}

form table {
    width: 100%;
}

form label {
    font-weight: 600;
}

form input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    margin-bottom: 16px;
    border: none;
    border-radius: 6px;
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

/* ===== Footer ===== */
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

/* Responsive Design */
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

    .hero h2 {
        font-size: 2rem;
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
                    <li><a href="aasss">Book a Ticket</a></li>
                    <li><a href="inserfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="Register.jsp">Register</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String rating = request.getParameter("rating");
   String feedback = request.getParameter("feedback");
%>
 <div class="tablesection">

<h2>Update your Feedback</h2>
   <form action="updatefeedbackServlet" method="post">
        <table>
        
              <tr>
                <td><label for="id">ID:</label></td>
                <td><input type="text" id="name" name="id" value="<%=id%>" readonly></td>
            </tr>
        
        
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" value="<%=name%>" required></td>
            </tr>
            <tr>
                <td><label for="email">Price:</label></td>
                <td><input type="text" id="email" name="email" value="<%=email%>" required></td>
            </tr>
            <tr>
                <td><label for="rating">Rating:</label></td>
                <td><input type="text" id=rating name="rating" value="<%=rating%>" required></td>
            </tr>
            <tr>
                <td><label for="feedback">Feedback:</label></td>
                <td><input type="text" id="feedback" name="feedback" value="<%=feedback%>" required></td>
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