<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recommended Movies</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .navbar {
            padding: 2px 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(79, 74, 74, 0.5);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            color: white;
        }

        .navbar-brand img {
            width: 120px;
            height: 80px;
        }

        .nav-links {
            list-style: none;
            display: flex;
            align-items: center;
        }

        .nav-links li {
            margin-right: 20px;
        }

        .nav-links li:last-child {
            margin-right: 0;
        }

        .nav-links a {
            text-decoration: none;
            color: #000;
        }

        .btn {
            background-color: #20B2AA;
            color: #fff;
            border: none;
            padding: 8px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .content {
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .movie-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .movie-item {
            flex: 0 0 calc(33.33% - 10px);
            margin-bottom: 20px;
        }

        .movie-image {
            width: 100%;
            height: auto;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<h2>Welcome, <%= session.getAttribute("username") %></h2>

<div class="navbar">
    <div class="navbar-brand">
        <a href="#">
            <img height="100px" width="100px" src="log6.png" alt="logo">
        </a>
    </div>
    <ul class="nav-links">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="seat.jsp">Booking</a></li>
        <div class="form-group">
            <label for="location">Location:</label>
            <select id="location" name="location" class="form-control" required>
                <option value="">Location</option>
                <option value="">Thoothukudi</option>
                <option value="ranipet.jsp">Ranipet</option>
                <option value="nagercoil.jsp">Nagercoil</option>
            </select>
        </div>
        <li><a class="btn" href="signupmovie.jsp">Sign up</a></li>
        <li><a class="btn" href="signinmovie.jsp">Sign in</a></li>
    </ul>
</div>

<div class="container">
    <h3 class="mt-5">Recommended Movies</h3>
    <div class="movie-list">
        <div class="movie-item">
            <a href="brama.jsp"><img class="movie-image" src="picture/brama1.jpg" alt="brama"></a>
        </div>
        <div class="movie-item">
            <a href="minusone.jsp"><img class="movie-image" src="picture/godi1.jpg" alt="godzi"></a>
        </div>
        <div class="movie-item">
            <a href="oppen.jsp"><img class="movie-image" src="picture/oppen3.jpg" alt="oppen">
        </div>
    </div>
</div>

<script>
    document.getElementById("location").addEventListener("change", function () {
        var selectedLocation = this.value;
        if (selectedLocation) {
            window.location.href = selectedLocation;
        }
    });
</script>

</body>
</html>
