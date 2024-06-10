
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up Page</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("popcorn.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 120vh;
        }

        .signup-form {
            width: 300px;
            padding: 50px;
            background-color: rgba(79, 74, 74, 0.5);
            box-shadow: #D3D3D3;
            border-radius: 10px;
            color: white;
        }

        .signup-form input[type="text"],
        .signup-form input[type="email"],
        .signup-form input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .signup-form button {
            width: 100%;
            padding: 10px;
            background-color: black;
            color: #ffffff;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="signup-form">
    <form action="SignupSevlet" method="get">
        <h2 style="text-align: center;">
            <span style="color: black;"> Welcome to TicketFlick</span>
        </h2>
        <h3 style="text-align: center;">Sign Up</h3>
        <label for="userName">UserName:</label>
        <input type="text" id="userName" name="userName" placeholder="Username" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Email" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Password" required><br><br>

        <button type="submit">Sign Up</button>
    </form>
    <%
        if (session.getAttribute("user") != null) {
    %>
    <p style="text-align: center;">You are already signed in as <%= session.getAttribute("user") %>.</p>
    <% } %>
</div>
</body>
</html>
