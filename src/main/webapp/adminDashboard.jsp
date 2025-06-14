<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - SeatReserve</title>
    <style>
/* Reset and Base Styles */
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
    margin: 0 auto;
    padding: 0 20px;
}

/* Header */
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

/* Admin Dashboard Background */
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
    background-color: rgba(0, 0, 0, 0.75);
    z-index: 1;
}

.admin-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 40px 20px;
    position: relative;
    z-index: 2;
}

/* Admin Welcome */
.admin-welcome {
    text-align: center;
    margin-bottom: 40px;
}

.admin-welcome h2 {
    font-size: 2.5rem;
    margin-bottom: 10px;
    color: #ff6b6b;
}

.admin-welcome p {
    font-size: 1.1rem;
    color: #ddd;
}

/* Admin Action Cards */
.admin-actions {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 25px;
}

.admin-card {
    background-color: rgba(255, 255, 255, 0.95);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    text-align: center;
}

.admin-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
}

.admin-card h3 {
    font-size: 1.6rem;
    color: #ff6b6b;
    margin-bottom: 15px;
}

.admin-card p {
    font-size: 1rem;
    margin-bottom: 20px;
    color: #555;
}

.admin-card .btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #ff6b6b;
    color: white;
    border: none;
    border-radius: 6px;
    text-decoration: none;
    font-weight: 500;
    transition: background-color 0.3s ease;
}

.admin-card .btn:hover {
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

/* Responsive Adjustments */
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

    .admin-container {
        padding: 20px;
    }

    .admin-welcome h2 {
        font-size: 2rem;
    }

    .admin-actions {
        grid-template-columns: 1fr;
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
                    <li><a href="displayAllfeedback">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="displayAllUser">User Account</a></li>
                </ul>
            </nav>
        </div>
    </header>
<div class="testimonial-background">
    <div class="admin-container">
        <div class="admin-welcome">
            <h2>Welcome, ${Drivers}!</h2>
            <p>Admin Dashboard Overview</p>
        </div>
        
        <div class="admin-actions">
            <div class="admin-card">
                <h3>Manage Users</h3>
                <p>View, Edit, or Delete User Accounts</p>
                <a href="displayAllUser" class="btn">Go to Users</a>
            </div>
            <div class="admin-card">
                <h3>View Feedback</h3>
                <p>Check Customer Feedback and Ratings</p>
                <a href="displayAllfeedback" class="btn">View Feedback</a>
            </div>
            <div class="admin-card">
                <h3>Manage Drivers</h3>
                <p>View, Edit, or Delete Driver Accounts</p>
                <a href="driverInsert.jsp" class="btn">Go to Drivers</a>
            </div>
        </div>
    </div>
    
</div>
    <!-- Use your existing footer -->
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