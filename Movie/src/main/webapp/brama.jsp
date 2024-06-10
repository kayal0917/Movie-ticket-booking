<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.movie-item {
	width: 32%;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}
</style>
<body>
<div class="container">
    <form action="seat.jsp">

		   <div class="movie-item">
            <a href="brama.jpg"><img class="movie-image" src="brama.jpg" alt="brama" style="width: 100%;"></a>
        </div>
              <input type="submit" value="Book Ticket" class="btn" />
        </div>
      </form>  
</body>
</html>