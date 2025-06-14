<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update user details</title>
<style>
/* Base Reset */
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
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 40px 20px;
}

/* Form Container Styling */
form {
	background-color: rgba(0, 0, 0, 0.6);
	backdrop-filter: blur(4px);
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
	max-width: 600px;
	width: 100%;
}

table {
	width: 100%;
}

label {
	font-weight: 600;
	color: white;
	display: block;
	margin-bottom: 6px;
}

input[type="text"],
input[type="email"],
input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 16px;
	border: none;
	border-radius: 6px;
	background-color: #f0f0f0;
	color: #333;
	font-size: 1rem;
}

input[readonly] {
	background-color: #ddd;
	color: #666;
}

input[type="submit"] {
	background-color: #ff6b6b;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 6px;
	font-size: 1rem;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #e55353;
}

/* Centering the Submit Button */
td[colspan="2"] {
	text-align: center;
}

/* Responsive */
@media (max-width: 600px) {
	form {
		padding: 30px 20px;
	}

	table, tr, td {
		display: block;
		width: 100%;
	}

	td {
		margin-bottom: 15px;
	}
}
</style>

</head>
<body>
<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String gmail = request.getParameter("gmail");
   String password = request.getParameter("password");
   String phone = request.getParameter("phone");
%>
 <form action="UpdateProfileServlet" method="post">
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
                <td><label for="gmail">Email:</label></td>
                <td><input type="email" id="gmail" name="gmail" value="<%=gmail%>" required></td>
            </tr>
            <tr>
                <td><label for="password">Category:</label></td>
                <td><input type="password" id="password" name="password" value="<%=password%>" required></td>
            </tr>
            <tr>
                <td><label for="phone">Quantity:</label></td>
                <td><input type="text" id="phone" name="phone" value="<%=phone%>" required></td>
            </tr>
          
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>


</body>
</html>