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
    <form id="locationForm" method="post">

        <div class="movie-item">
            <a href="brama.jsp"><img class="movie-image" src="picture/brama1.jpg" alt="brama"style="width: 100%;"></a>
        </div>
        <select id="location" name="location" class="form-control" required>
            <option value="">Location</option>
            <option value="Thoothukudi">Thoothukudi</option>
            <option value="ranipet">Ranipet</option>
            <option value="nagercoil">Nagercoil</option>
        </select>
        <input type="submit" value="Book Ticket" class="btn" />
    </form>  
</div>

<script>
document.getElementById("locationForm").addEventListener("submit", function(event) {
    event.preventDefault(); 
    var locationSelect = document.getElementById("location");
    var selectedLocation = locationSelect.options[locationSelect.selectedIndex].value;
    window.location.href = "brama.jsp?location=" + encodeURIComponent(selectedLocation);
});
</script>

</body>
</html>
