<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
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


        /* Form Section */
        .form-section {
            background-color: #2b2b2b;
            padding: 30px;
            text-align: center;
            min-height: 60vh;
        }

        .form-section h3 {
            color: #f4f4f4;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            color: #d1d1d1;
            display: block;
            margin-bottom: 10px;
        }

        .form-group input,
        button {
            padding: 12px;
            font-size: 1rem;
            width: 100%;
            max-width: 400px;
            margin: 0 auto;
            display: block;
            border-radius: 5px;
            border: none;
        }

        .form-group input {
            background-color: #3c3c3c;
            color: #f4f4f4;
        }

        button.btn {
            background-color: #ff6b6b;
            color: white;
            cursor: pointer;
        }

        button.btn:hover {
            background-color: #ff4a4a;
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

            .form-section form {
                padding: 20px;
            }
        }
    </style>
    <title>SeatReserve | Add Driver</title>
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
                    <li><a href="displayAlldriverServlet">Driver's List</a></li>
                    <li><a href="logoutServlet">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Form Section for Adding Driver -->
    <section class="form-section">
        <div class="container">
            <h3>Add a New Driver</h3>
            <form action="driverInsertServlet" method="post">
                <div class="form-group">
                    <label for="name">Driver Name</label>
                    <input type="text" name="name" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="text" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" required>
                </div>
          
                <button type="submit" class="btn">Add Driver</button>
            </form>
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
