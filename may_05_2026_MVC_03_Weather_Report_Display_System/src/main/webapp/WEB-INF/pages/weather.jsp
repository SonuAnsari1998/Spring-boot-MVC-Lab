<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Weather Report</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        text-align: center;
        width: 350px;
    }

    h1 {
        margin-bottom: 20px;
        color: #333;
    }

    .weather-item {
        font-size: 18px;
        margin: 10px 0;
        color: #555;
    }

    .label {
        font-weight: bold;
        color: #222;
    }

    .temp {
        font-size: 28px;
        font-weight: bold;
        color: #ff6b6b;
    }
</style>

</head>
<body>

<div class="container">
    <h1>🌤 Weather Report</h1>

    <div class="weather-item">
        <span class="label">City:</span> ${wt.city}
    </div>

    <div class="weather-item temp">
        ${wt.temperature} °C
    </div>

    <div class="weather-item">
        <span class="label">Condition:</span> ${wt.condition}
    </div>

    <div class="weather-item">
        <span class="label">Humidity:</span> ${wt.humidity}%
    </div>
</div>

</body>
</html>