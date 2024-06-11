<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theater Shows</title>
    <style>
        /* CSS styles */
        .theater {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 20px;
        }
        .theater h2 {
            color: #333;
        }
        .shows {
            list-style-type: none;
            padding: 0;
            display: flex; /* Display the show timings horizontally */
            flex-wrap: wrap; /* Allow multiple lines of timings */
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
        }
        .show button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Theater Shows</h1>
    <div class="theaters">
        <%-- Vetri Cinemas Dolby Atmos: Madurai --%>
        <div class="theater">
            <h2>Vetri Cinemas Dolby Atmos - Madurai</h2>
                        Bramayugam
            
            <ul class="shows">
                <%-- Add shows for Vetri Cinemas Dolby Atmos --%>
                <li class="show">
                    <div class="show-time">10:00 PM</div>
                    <form action="book.jsp" method="post">
                        <input type="hidden" name="theater" value="Vetri Cinemas Dolby Atmos - Madurai">
                        <input type="hidden" name="showTime" value="10:00 PM">
                    </form>
                </li>
                <li class="show">
                    <div class="show-time">1:00 PM</div>
                    <form action="book.jsp" method="post">
                        <input type="hidden" name="theater" value="Vetri Cinemas Dolby Atmos - Madurai">
                        <input type="hidden" name="showTime" value="1:00 PM">
                    </form>
                </li>
                <li class="show">
                    <div class="show-time">6:00 PM</div>
                    <form action="book.jsp" method="post">
                        <input type="hidden" name="theater" value="Vetri Cinemas Dolby Atmos - Madurai">
                        <input type="hidden" name="showTime" value="6:00 PM">
                    </form>
                </li>
            </ul>
            <p class="non-cancellable">Note:Non-cancellable.</p>
        </div>
    </div>
</body>
</html>
