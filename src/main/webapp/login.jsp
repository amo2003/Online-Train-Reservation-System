<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* Reset and Base Styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

   /* Make body a flex container */
body {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    background: url('css/main.jpg') no-repeat center center fixed;
    background-size: cover;
    color: #333;
    line-height: 1.6;
}


/* Content wrapper to fill space between header and footer */
.main-content {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center; /* center vertically */
    align-items: center;     /* center horizontally */
    padding: 30px 20px;
}

/* Login heading centered */
.main-content h1 {
    text-align: center;
    margin-bottom: 20px;
    color: white;
}

/* Adjust form spacing */
form {
    background: rgba(255, 255, 255, 0.95); /* translucent white */
    padding: 30px;
    width: 100%;
    max-width: 500px;
    margin-top: 20px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}

    .container {
        width: 90%;
        max-width: 1200px;
        margin: auto;
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



    form {
        background: #3a3a3a;
        padding: 30px;
        max-width: 500px;
        margin: auto;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px;
        vertical-align: middle;
    }
/* Input styling - make text white */
td input[type="email"],
td input[type="password"] {
    width: 100%;
    padding: 10px;
    background: #1e1e2e;
    border: 1px solid #444;
    border-radius: 6px;
    color: #ffffff; /* Make input text white */
    font-size: 1rem;
}

/* Label styling - make label text light */
td label {
    color: #f0f0f0; /* Light label color */
    font-weight: 500;
}

/* Input placeholder styling (optional) */
td input::placeholder {
    color: #bbbbbb;
}


    input[type="submit"] {
        background: #e55353;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1rem;
        transition: background 0.3s ease;
    }

    input[type="submit"]:hover {
        background: green;
    }
    
    .signup-link {
    margin-top: 20px;
    font-size: 1rem;
    color: #f0f0f0;
    text-align: center;
}

.signup-link a {
    color: #e55353;
    font-weight: bold;
    text-decoration: none;
    margin-left: 5px;
    transition: color 0.3s ease, text-decoration 0.3s ease;
}

.signup-link a:hover {
    color: #00cc66;
    text-decoration: underline;
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
                    <li><a href="inserfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="userinsert.jsp">Register</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="main-content">
<h1>Login to Your Account</h1>
<form action="LoginServlet" method="post">
        <table>
           
            <tr>
                <td><label for="gmail">Email:</label></td>
                <td><input type="email" id="gmail" name="gmail"  required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
          
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
                <p class="signup-link">Don't have an account? <a href="Register.jsp">Sign Up</a></p>
    
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