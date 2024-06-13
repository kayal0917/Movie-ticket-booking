<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.chainsys.model.Theaterpojo"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url("images2.jpg");
	 background-color: #cccccc;
	
}

table {
	border-collapse: collapse;
	width: 73%;
	background-color: white;
	margin-top: 200px;
	margin-left: 179px;
}

td {
	border: 2px solid #ddd;
	padding: 8px;
	margin-top: 500px;
}
m{
	background-color: purple;

}

</style>
</head>
<body>
	<div class="search">
    <form action="Searchservlet" method="get">
    <label for="type">Type:</label><br>
  <select id="type" name="location" required autofocus>
  <option value="Thoothukudi">Thoothukudi</option>
    <option value="Ranipet">Ranipet</option>
    <option value="Nagercoil">Nagarkovil</option>
  
  <!-- <option value="farmers">FARMER</option>
  <option value="others">ADMIN</option -->>
  </select>
<input type="submit" value="SEARCH" class="button2">
	<table>	
		<tr style="background:#9370DB">
			<td>Theater name</td>
			<td>location</td>
		</tr>
		<%
		ArrayList<Theaterpojo> theater = (ArrayList<Theaterpojo>) request.getAttribute("list");
		if (theater != null && !theater.isEmpty()) {
			for (Theaterpojo obj : theater) {
		%>
		<tr>
			<td><%=obj.getTheatername()%></td>
			<td><%=obj.getLocation()%></td>
			<td>
			<form action="Deleteservlets" method="get">
    <input type="hidden" class="delete-button" value="<%= obj.getTheatername() %>" name="username"> <!-- Changed name to username -->
    <input type="submit" class="delete-button" value="Delete" name="action">
</form>

			</td>
			<td>
			<button><a href="update.html" style="text-decoration: none">Update</a></button>
			</td>
		</tr>
		<%
		}
		} else {
		%>
		<tr>
			<td colspan="6">No users found</td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="./LogoutSessions"><button>Logout</button></a>
</body>
</html>
