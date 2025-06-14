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


        /* Hero Section Styles */
        .hero {
            background: url('css/main.jpg') no-repeat center center/cover;
            min-height: 100vh; /* Ensure the hero section covers full viewport height */
            color: #fff;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        
        

        .hero h2 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .hero .btn {
            background-color: #ff6b6b;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }

        .hero .btn:hover {
            background-color: #ff4a4a;
        }

        /* Slideshow Section */
        .slideshow-container {
            position: relative;
            background-color: #6666;
            max-width: 800px; /* Set a maximum width for the slideshow */
            margin: auto;
            display: flex; /* Use flexbox for side content */
            align-items: center; /* Center align vertically */
        }

        .side-content {
            flex: 1; /* Allow side content to take available space */
            padding: 20px;
            text-align: center;
        }

        .slides {
            display: none;
            flex: 1; /* Allow slides to take available space */
        }

        .slide-img {
            width: 100%; /* Make the images fit within the container */
            height: 350px; /* Increased height for larger images */
            object-fit: cover; /* Cover the area without stretching */
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.5s ease; /* Added transition for scaling effect */
        }

        .slides.fade {
            opacity: 0; /* Start with invisible slides */
            transition: opacity 1s ease; /* Smooth transition for opacity */
        }

        .slides.fade.show {
            opacity: 1; /* Fully visible when active */
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* Booking Form Section */
        #booking-form {
            background: url('css/image6.jpg') no-repeat center center/cover;
            padding: 30px 0;
            text-align: center;
        }
        
        #booking-form::before {
        background-color : rgba(0,0,0,0.5);
        }

        #booking-form h3 {
            margin-bottom: 20px;
            font-size: 2rem;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input,
        button {
            padding: 10px;
            font-size: 1rem;
            width: 100%;
            max-width: 300px;
            margin: 0 auto;
            display: block;
        }

        button.btn {
            background-color: #ff6b6b;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button.btn:hover {
            background-color: #ff4a4a;
        }

        /* Bus Schedule Section */
        #bus-schedule {
            background-color: #fff;
            padding: 30px 0;
            text-align: center;
        }

        #bus-schedule h3 {
            margin-bottom: 20px;
            font-size: 2rem;
        }

        table {
            width: 100%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
            color: white;
        }

        th {
            background-color: #ff6b6b;
            color: white;
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
        }
    </style>
    <title>SeatReserve | Home Page</title>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <h1>SeatReserve</h1>
            <nav>
                <ul>
                	<li><a href="homepage.jsp">Home</a></li>
                    <li><a href="login.jsp">Book a Ticket</a></li>
                    <li><a href="inserfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="login.jsp">User Account</a></li>
                    <li><a href="adminLogin.jsp">Admin</a></li>
                    

                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h2>Reserve Your Train Seat Easily and Fast</h2>
            <p>Book your train tickets from the comfort of your home with SeatReserve.</p>
            <a href="#booking-form" class="btn" onclick="scrollToForm(event)">Book Now</a>
        </div>
    </section>

    <!-- Slideshow Section -->
    <section class="slideshow-container">
        <div class="side-content left-content">
            <h3>Our Commitment</h3>
            <p>We ensure your journey is comfortable and hassle-free.</p>
        </div>

        <div class="slides fade">
            <img class="slide-img" src="css/image1.jpg" alt="Bus Image 1">
        </div>
        <div class="slides fade">
            <img class="slide-img" src="css/image2.jpg" alt="Bus Image 2">
        </div>
        <div class="slides fade">
            <img class="slide-img" src="css/image6.jpg" alt="Bus Image 3">
        </div>
        <div class="slides fade">
            <img class="slide-img" src="css/image7.jpg" alt="Bus Image 4">
        </div>

        <div class="side-content right-content">
            <h3>Customer Support</h3>
            <p>We are here to assist you 24/7 for any queries or concerns.</p>
        </div>

        <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
        <a class="next" onclick="changeSlide(1)">&#10095;</a>
    </section>

    <!-- Booking Form Section -->
    <section id="booking-form">
        <div class="container">
            <h3>Book Your Ticket</h3>
            <form action="login.jsp" method="post">
                <div class="form-group">
                    <input type="text" name="name" placeholder="Your Name" required>
                </div>
                <div class="form-group">
                    <input type="email" name="email" placeholder="Your Email" required>
                </div>
                <div class="form-group">
                    <input type="text" name="destination" placeholder="Destination" required>
                </div>
                <div class="form-group">
                    <input type="date" name="date" required>
                </div>
                <div class="form-group">
                    <input type="time" name="time" required>
                </div>
                <button class="btn" type="submit">Reserve Now</button>
            </form>
        </div>


    <!-- Bus Schedule Section -->
   
        <div class="container">
            <br><br><br><br><h3 style="color:white">Our Train Schedule</h3>
            <table>
                <tr>
                    <th>Destination</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                    <th>Available Seats</th>
                </tr>
                <tr>
                    <td>Galle to Colombo-Fort</td>
                    <td>08:00 AM</td>
                    <td>10:00 AM</td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Colombo-Fort to Kandy</td>
                    <td>09:00 AM</td>
                    <td>11:00 AM</td>
                    <td>15</td>
                </tr>
                <tr>
                    <td>Beliatta to Anuradhapura</td>
                    <td>10:00 AM</td>
                    <td>12:00 PM</td>
                    <td>25</td>
                </tr>
            </table>
             <br><form action="log.jsp" method="get">
    <button class="btn" type="submit">View More!!!</button>
</form>        </div>
    </section>
  

    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2024 SeatReserve. All Rights Reserved.</p>
            <ul class="social-links">
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">Instagram</a></li>
            </ul>
        </div>
    </footer>

    <!-- JavaScript Section -->
    <script>
        let slideIndex = 0;
        showSlides(); // Call showSlides function to initiate the slideshow

        function showSlides() {
            let i;
            const slides = document.getElementsByClassName("slides");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none"; // Hide all slides
                slides[i].classList.remove('show'); // Remove show class for fade effect
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1; } // Reset slide index
            slides[slideIndex - 1].style.display = "block"; // Show the current slide
            slides[slideIndex - 1].classList.add('show'); // Add show class for fade effect
            setTimeout(showSlides, 3000); // Change slide every 3 seconds
        }

        function changeSlide(n) {
            slideIndex += n;
            const slides = document.getElementsByClassName("slides");
            if (slideIndex > slides.length) { slideIndex = 1; }
            if (slideIndex < 1) { slideIndex = slides.length; }
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none"; // Hide all slides
                slides[i].classList.remove('show'); // Remove show class for fade effect
            }
            slides[slideIndex - 1].style.display = "block"; // Show the current slide
            slides[slideIndex - 1].classList.add('show'); // Add show class for fade effect
        }

        // Smooth scroll to booking form
        function scrollToForm(event) {
            event.preventDefault(); // Prevent default anchor click behavior
            document.getElementById('booking-form').scrollIntoView({ behavior: 'smooth' });
        }
    </script>
</body>
</html>
