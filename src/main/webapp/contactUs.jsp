<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            height: 100%; /* Ensure the body takes full viewport height */
            scroll-behavior: smooth; /* Add smooth scrolling */
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            color: #333;
            opacity: 0;
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

        /* Contact Section */
        .contact-section {
            background: url('css/main.jpg') no-repeat center center/cover; /* Background image */
            background-size: cover; /* Ensure background image covers the entire section */
            padding: 50px 0;
            text-align: center;
            min-height: calc(100vh - 60px); /* Full height minus header and footer */
            color: #fff; /* Text color for better contrast */
            position: relative; /* Positioning for the overlay */
        }

        .contact-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5); /* Dark overlay for better text visibility */
            z-index: 1; /* Position behind text */
        }

        .contact-section h2 {
            font-size: 2.5rem;
            color: #ff6b6b;
            margin-bottom: 20px;
            position: relative; /* To bring text above overlay */
            z-index: 2; /* Position above the overlay */
        }

        .contact-section p {
            font-size: 1.2rem;
            margin-bottom: 40px;
            position: relative; /* To bring text above overlay */
            z-index: 2; /* Position above the overlay */
        }

        .contact-form {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            position: relative; /* To bring form above overlay */
            z-index: 2; /* Position above the overlay */
        }

        .contact-form .form-group {
            margin-bottom: 20px;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .contact-form textarea {
            height: 150px;
        }

        .contact-form button {
            background-color: #ff6b6b;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1.2rem;
            cursor: pointer;
        }

        .contact-form button:hover {
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

        /* Media Queries */
        @media (max-width: 768px) {
            header h1 {
                font-size: 1.5rem;
                margin-left: 10px;
            }

            header nav ul li {
                margin-left: 10px;
            }

            .contact-section h2 {
                font-size: 2rem;
            }

            .contact-section p {
                font-size: 1rem;
            }

            .contact-form input,
            .contact-form textarea {
                font-size: 0.9rem;
            }

            .contact-form button {
                font-size: 1rem;
            }
            
            
            .contact-section {
    background-color: #fff;
    padding: 60px 20px;
    text-align: center;
}

.contact-section h2 {
    font-size: 2.5rem;
    color: #ff6b6b;
    margin-bottom: 10px;
}

.contact-section p {
    font-size: 1.1rem;
    color: #555;
    margin-bottom: 30px;
}

.contact-details {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 40px;
}

.contact-item {
    background-color: #f9f9f9;
    padding: 20px 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    max-width: 300px;
}

.contact-item h4 {
    font-size: 1.3rem;
    color: #333;
    margin-bottom: 10px;
}

.contact-item p,
.contact-item a {
    font-size: 1rem;
    color: #444;
    text-decoration: none;
}

.contact-item a:hover {
    color: #ff6b6b;
}
            
        }
    </style>
    <title>SeatReserve | Contact Us</title>
</head>
<body>
    <!-- Header Section -->
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
                    <li><a href="login.jsp">User Account</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Contact Section -->
    <section class="contact-section">
  <div class="container">
    <h2>Contact Us</h2>
    <p>If you have any questions or need help, feel free to reach out to us!</p>

    <div class="contact-details">
      <div class="contact-item">
        <h4>📍 Address</h4>
        <p>123 Main Street,<br>Colombo 01, Sri Lanka</p>
      </div>

      <div class="contact-item">
        <h4>📞 Phone</h4>
        <p>+94 77 123 4567</p>
      </div>

      <div class="contact-item">
        <h4>📧 Email</h4>
        <p><a href="mailto:support@seatreserve.com">support@seatreserve.com</a></p>
      </div>
    </div>
  </div>
</section>


    <!-- Footer Section -->
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
