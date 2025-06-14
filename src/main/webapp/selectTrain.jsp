<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hotel Booking Page</title>
<style>
/* Base styles similar to your home page */
/* Page base styling */
body {
    font-family: Arial, sans-serif;
    background-color: lightblue; /* light green background matching home page */
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

/* Page Title */
h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #4CAF50;  /* Home header green */
}

/* Container wrapping the cards */
.card-wrapper {
    width: 100%;
    max-width: 1100px;
    margin: auto;
}

/* Card container styling */
.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

/* Hotel Card Styles */
.hotel-card {
    background-color: #fff;
    width: 250px;
    border-radius: 10px;
    border: 2px solid #66BB6A;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.2s, border-color 0.2s;
    text-decoration: none;
    color: inherit;
}

.hotel-card:hover {
    transform: scale(1.03);
    border-color: #43A047;
}

/* Image */
.hotel-card img {
    width: 100%;
    height: 150px;
    object-fit: cover;
}

/* Hotel info */
.hotel-info {
    padding: 15px;
}

.hotel-info h3 {
    margin: 0 0 10px;
    font-size: 18px;
    color: #4CAF50;
}

.hotel-info p {
    margin: 5px 0;
    color: #555;
}

</style>
</head>
<body>

	<h1>Available Hotels</h1>

	<div class="card-container">
		<a class="hotel-card" href="ConfirmBooking.jsp?hotel=Hotel%20Paradise"> <img
			src="css/image1.jpg" alt="train 1">
			<div class="hotel-info">
				<h3>Yal Devi</h3>
				<p>From: Colombo Fort</p>
				<p>To: Jaffna</p>
				<p>9.30 A.M.</p>

			</div>
		</a> <a class="hotel-card" href="ConfirmBooking.jsp?hotel=Sea%20View%20Resort">
			<img src="css/image2.jpg" alt="Hotel 2">
			<div class="hotel-info">
				<h3>Galu Kumari</h3>
				<p>From: Colombo Fort</p>
				<p>To: Beliatta</p>
				<p>10.15 A.M.</p>

			</div>
		</a> <a class="hotel-card" href="ConfirmBooking.jsp?hotel=Desert%20Oasis"> <img
			src="css/image5.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Ruhunu Kumari</h3>
				<p>From: Beliatta</p>
				<p>To: Colombo Fort</p>
				<p>6.10 A.M.</p>

			</div>
		</a>
		<a class="hotel-card" href="ConfirmBooking.jsp?hotel=Desert%20Oasis"> <img
			src="css/image6.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Rajarata Rajina</h3>
				<p>From: Anuradhapura</p>
				<p>To: Beliatta</p>
				<p>1.30 P.M.</p>

			</div>
		</a>
		<a class="hotel-card" href="ConfirmBooking.jsp?hotel=Desert%20Oasis"> <img
			src="css/image7.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Sagarika</h3>
				<p>From: Maradana</p>
				<p>To: Matara</p>
				<p>2.30 P.M.</p>

			</div>
		</a><a class="hotel-card" href="ConfirmBooking.jsp?hotel=Desert%20Oasis"> <img
			src="css/img.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Uththara Devi</h3>
				<p>From: Colombo Fort</p>
				<p>To: Vauniya</p>
				<p>11 A.M.</p>

			</div>
		</a>
	</div>

</body>
</html>