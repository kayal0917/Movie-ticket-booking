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
	<td>
		<form action="Searchservlet" method="get">
			<center>
				<input type="hidden " class="search-button" placeholder="Search..."
					name="query"> <input type="submit" value="Search">
					
			</center>
		</form>
	</td>
	<table>	
		<tr style="background:#9370DB">
			<td>Theater id</td>
			<td>Theater name</td>
			<td>location</td>
		</tr>
		<%
		ArrayList<Theaterpojo> theater = (ArrayList<Theaterpojo>) request.getAttribute("list");
		if (theater != null && !theater.isEmpty()) {
			for (Theaterpojo obj : theater) {
		%>
		<tr>
			<td><%=obj.getTheaterid()%></td>
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
