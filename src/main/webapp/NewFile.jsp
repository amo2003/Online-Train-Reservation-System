<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hotel Booking Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 20px;
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
    }

    .card-container {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
    }

    .hotel-card {
      background-color: #fff;
      width: 250px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: transform 0.2s;
    }

    .hotel-card:hover {
      transform: scale(1.03);
    }

    .hotel-card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
    }

    .hotel-info {
      padding: 15px;
    }

    .hotel-info h3 {
      margin: 0 0 10px;
      font-size: 18px;
    }

    .hotel-info p {
      margin: 5px 0;
      color: #555;
    }
  </style>
</head>
<body>

  <h1>Available Hotels</h1>

<a href="login.jsp">
  <div class="card-container">
    <div class="hotel-card">
      <img src="css/image2.jpg" alt="Hotel 1">
      <div class="hotel-info">
        <h3>Hotel Paradise</h3>
        <p>Category: Luxury</p>
        <p>Location: Delhi</p>
        <p>Price: Rs.4500/night</p>
      </div>
    </div>
    </a>

    <div class="hotel-card">
      <img src="css/image1.jpg" alt="Hotel 2">
      <div class="hotel-info">
        <h3>Sea View Resort</h3>
        <p>Location: Goa</p>
        <p>Price: ₹5500/night</p>
      </div>
    </div>

    <div class="hotel-card">
      <img src="css/main.jpg" alt="Hotel 3">
      <div class="hotel-info">
        <h3>Mountain Retreat</h3>
        <p>Location: Manali</p>
        <p>Price: ₹3800/night</p>
      </div>
    </div>

    <div class="hotel-card">
      <img src="css/image1.jpg" alt="Hotel 4">
      <div class="hotel-info">
        <h3>City Lights Hotel</h3>
        <p>Location: Mumbai</p>
        <p>Price: ₹6000/night</p>
      </div>
    </div>

    <div class="hotel-card">
      <img src="css/image1.jpg" alt="Hotel 5">
      <div class="hotel-info">
        <h3>Desert Oasis</h3>
        <p>Location: Jaisalmer</p>
        <p>Price: ₹4200/night</p>
      </div>
    </div>
  </div>

</body>
</html>