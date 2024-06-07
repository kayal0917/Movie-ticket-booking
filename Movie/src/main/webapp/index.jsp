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
    body {
    background-image: url('');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-color: #f0f0f0;
}

.content {
    /* Add padding or margin to make the content readable */
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
    flex: 0 0 calc(33.33% - 10px); /* Adjust width based on the number of columns */
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
        </li>
        <li><a href="book.jsp">Booking</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        <li><a class="btn" href="signupmovie.jsp">Sign up</a></li>
        <li><a class="btn" href="signinmovie.jsp">Sign in</a></li>
    </ul>
</div>

<div class="container">
    <h3 class="mt-5">Recommended Movies</h3>
    <div class="movie-list">
        <div class="movie-item">
            <a href="brama.jpg"><img class="movie-image" src="brama.jpg" alt="brama"></a>
        </div>
        <div class="movie-item">
            <a href="godzi.jpg"><img class="movie-image" src="godzi.jpg" alt="godzi"></a>
        </div>
        <div class="movie-item">
                <a href="oppen.jpg"><img class="movie-image" src="oppen.jpg" alt="oppen">
        </div>
    </div>
</div>
</body>
</html>
