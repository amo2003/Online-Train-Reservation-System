<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    padding: 60px 20px;
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
<link rel="stylesheet" href="CSS/display.css">
</head>
<body>
   <header>
        <div class="container">
            <h1>SeatReserve</h1>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="aasss">Book a Ticket</a></li>
                    <li><a href="login.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="Register.jsp">Register</a></li>
                </ul>
            </nav>
        </div>
    </header>
   	<div class="tablesection">
   
	<h2>Your Feedback</h2>

	<input type="text" id="searchInput" placeholder="search...">
	<table>
		<tr>

			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Rating</th>
			<th>Feedback</th>
			<th>Action</th>
		</tr>
		<c:forEach var="Feedbacks" items="${Feedbacks}">
			<tr>
				<td>${Feedbacks.id}</td>
				<td>${Feedbacks.name}</td>
				<td>${Feedbacks.email}</td>
				<td>${Feedbacks.rating}</td>
				<td>${Feedbacks.feedback}</td>
				
				
     <td>
        <a href= "updatefeedback.jsp?id=${Feedbacks.id}&name=${Feedbacks.name}&email=${Feedbacks.email}&rating=${Feedbacks.rating}&feedback=${Feedbacks.feedback}">
        <button>Update Your Feedback</button>
        </a>
        
         <form action="deletefeedbackServlet" method="post">
        <input type= "hidden" name ="id" value="${Feedbacks.id}">
        <button>Delete Your Feedback</button>
        </form>
    </td> 
				
				
			</tr>
		</c:forEach>

	</table>
	
	</div>

	<script>
		function filterTable() {
			var input, filter, table, tr, td, i, j, txtValue, found;
			input = document.getElementById("searchInput");
			filter = input.value.toUpperCase();
			table = document.querySelector("table");
			tr = table.getElementsByTagName("tr");

			for (i = 1; i < tr.length; i++) { // Start from 1 if row 0 is the header
				td = tr[i].getElementsByTagName("td");
				found = false;
				for (j = 0; j < td.length; j++) {
					if (td[j]) {
						txtValue = td[j].textContent || td[j].innerText;
						if (txtValue.toUpperCase().indexOf(filter) > -1) {
							found = true;
							break;
						}
					}
				}
				tr[i].style.display = found ? "" : "none";
			}
		}

		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("searchInput").addEventListener("input",
					filterTable);
		});
	</script>

	
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