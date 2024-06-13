<%@page import="com.chainsys.model.Theaterpojo"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Theater Shows</title>
<style>
/* styles.css */

/* Global Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

.theaters {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}

.theater-box {
    width: 300px; /* Adjust the width according to your design */
    margin-bottom: 20px;
}

.theater {
    background-color:  rgba(79, 74, 74, 0.5);
    padding: 20px;
    border-radius: 81px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

/* Theater Styles */
.theater h2 {
    color: #333;
    font-size: 24px;
}

.shows {
    list-style-type: none;
    padding: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: 10px;
}

.show {
    margin-right: 10px;
    margin-bottom: 10px;
    display: flex;
    align-items: center;
}

.show-time {
    background-color: #007bff;
    color: #fff;
    padding: 5px 10px;
    margin-right: 10px;
    border-radius: 5px;
}

.show button {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 5px;
}

.show button:hover {
    background-color: #0056b3;
}

.non-cancellable {
    margin-top: 10px;
    font-style: italic;
    color: #888;
}


</style>
</head>
<body>
	<% List<Theaterpojo> locations= (List<Theaterpojo>)request.getAttribute("location"); %>
	<form action="Searchservlet" method="post">

		<h1>Theater Shows</h1>
		<div class="theaters">
			<div class="theater">
				<% for(Theaterpojo location : locations ) { %>
				<h2><%= location.getTheatername() %></h2>
				Bramayugam

				<ul class="shows">
					<%-- Add shows for Vetri Cinemas Dolby Atmos --%>
					<li class="show">
						<div class="show-time">10:00 PM</div>
						<form action="book.jsp" method="post">
							<input type="hidden" name="theater"
								value="Vetri Cinemas Dolby Atmos - Madurai"> <input
								type="hidden" name="showTime" value="10:00 PM">
						</form>
					</li>
					<li class="show">
						<div class="show-time">1:00 PM</div>
						<form action="book.jsp" method="post">
							<input type="hidden" name="theater"
								value="Vetri Cinemas Dolby Atmos - Madurai"> <input
								type="hidden" name="showTime" value="1:00 PM">
						</form>
					</li>
					<li class="show">
						<div class="show-time">6:00 PM</div>
						<form action="book.jsp" method="post">
							<input type="hidden" name="theater"
								value="Vetri Cinemas Dolby Atmos - Madurai"> <input
								type="hidden" name="showTime" value="6:00 PM">
						</form>
					</li>
				</ul>
				<p class="non-cancellable">Note:Non-cancellable.</p>
				<%} %>
			</div>
		</div>
</body>
</html>
