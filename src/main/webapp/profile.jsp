<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<style>
/* General Reset */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body Styling */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: url('css/main.jpg') no-repeat center center/cover;
	color: white;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* Profile Container */
.profile-container {
	background-color: rgba(0, 0, 0, 0.8);
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
	width: 90%;
	max-width: 600px;
	text-align: center;
}

/* Headings */
.profile-container h1 {
	font-size: 2rem;
	margin-bottom: 20px;
	color: #ff6b6b;
}

.profile-container h2 {
	font-size: 1.2rem;
	margin-bottom: 12px;
	color: white;
}

/* Buttons */
.profile-container button {
	background-color: #ff6b6b;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 6px;
	font-size: 1rem;
	cursor: pointer;
	margin: 10px 5px;
	transition: background-color 0.3s ease;
}

.profile-container button:hover {
	background-color: #e55353;
}

/* Form and Link Styling */
.profile-container a {
	text-decoration: none;
}

.profile-container form {
	display: inline-block;
}
</style>


</head>
<body>
	<div class="profile-container">

	<h1>User Profile Details</h1>
	
	<h2>ID: ${user.id}</h2>
	<h2>Name: ${user.name}</h2>
	<h2>Email: ${user.gmail}</h2>
	<h2>Password: ${user.password}</h2>
	<h2>Phone: ${user.phone}</h2>



	<a
		href="UpdateProfile.jsp?id=${user.id}&name=${user.name}&gmail=${user.gmail}&password=${user.password}&phone=${user.phone}">
		<button>Update Your Profile</button>
	</a>

	<form action="AccountDeleteServlet" method="post">
		<input type="hidden" name="id" value="${user.id}">
		<button>Delete Your Profile</button>
	</form>
	
	</form>
	<a>
		<form action="selectTrain.jsp" method="post">
		<button>Search Available Train Time</button>
	</form>
</div>
</body>
</html>