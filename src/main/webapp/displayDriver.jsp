<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<style>
/* General Styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html, body {
	height: 100%;
}

body {
	font-family: Arial, sans-serif;
	background-color: #1e1e1e; /* Dark background */
	color: #d1d1d1; /* Light gray text */
	display: flex;
	flex-direction: column;
	animation: fadeIn 1s ease-in forwards; /* Apply fade-in animation */
}

/* Fade-in animation */
@
keyframes fadeIn { 0% {
	opacity: 0;
}

100
%
{
opacity
:
1;
}
}

/* Container */
.container {
	width: 90%;
	margin: 0 auto;
	max-width: 1200px;
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

/* Table Section */
.table-section {
	background-color: #2b2b2b;
	padding: 30px;
	text-align: center;
	min-height: 60vh;
}

.table-section h2 {
	color: #f4f4f4;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

table, th, td {
	border: 1px solid #d1d1d1;
}

th, td {
	padding: 12px;
	text-align: center;
}

th {
	background-color: #3c3c3c;
	color: #f4f4f4;
}

td {
	background-color: #3c3c3c;
	color: #d1d1d1;
}

a {
	color: #ff6b6b;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

button {
	background-color: #ff6b6b;
	color: white;
	cursor: pointer;
	border: none;
	padding: 10px;
	border-radius: 5px;
}

button:hover {
	background-color: #ff4a4a;
}

/* Footer Section */
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
/* Responsive Design */
@media ( max-width : 768px) {
	header h1 {
		float: none;
		text-align: center;
		margin-bottom: 10px;
	}
	header nav ul {
		float: none;
		text-align: center;
		margin: 0;
	}
	header nav ul li {
		display: block;
		margin: 10px 0;
	}
	.table-section table {
		font-size: 0.9rem;
	}
}
</style>
<title>SeatReserve | Driver Details</title>
</head>
<body>

	<!-- Header Section -->
	<header>
		<div class="container">
			<h1>SeatReserve Admin</h1>
			<nav>
				<ul>
					<li><a href="adminDashboard.jsp">Dashboard</a></li>
					<li><a href="#">Manage Users</a></li>
					<li><a href="#">Bus Schedules</a></li>
					<li><a href="#">Reports</a></li>
					<li><a href="home.jsp">Home</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- Table Section for Driver Details -->
	<section class="table-section">
		<div class="container">
			<h2>Driver Details</h2>
			<table>

				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Actions</th>
				</tr>

				<c:forEach var="Drivers" items="${Drivers}">
					<tr>
						<td>${Drivers.id}</td>
						<td>${Drivers.name}</td>
						<td>${Drivers.phone}</td>
						<td>${Drivers.email}</td>
						<!-- changed 'demail' to 'email' for consistency -->
						<td><a
							href="updateDriver.jsp?id=${Drivers.id}&name=${Drivers.name}&phone=${Drivers.phone}&email=${Drivers.email}">
								<button>Update Driver</button>
						</a>

							      <form action="deleteDriverServlet" method="post" style="display:inline;">
                                    <input type="hidden" name="id" value="${Drivers.id}" />
                                    <button type="submit" onclick="return confirm('Are you sure you want to delete this driver?');">Delete Driver</button>
                                </form></td>

					</tr>
				</c:forEach>
				<c:if test="${empty Drivers}">
					<tr>
						<td colspan="7">No drivers found.</td>
					</tr>
				</c:if>

			</table>
		</div>
	</section>

	<!-- Footer Section -->
	<footer>
		<div class="container">
			<p>&copy; 2024 SeatReserve Admin Dashboard. All rights reserved.</p>
			<ul class="social-links">
				<li><a href="#">Facebook</a></li>
				<li><a href="#">Twitter</a></li>
				<li><a href="#">Instagram</a></li>
			</ul>
		</div>
	</footer>

</body>
</html>
