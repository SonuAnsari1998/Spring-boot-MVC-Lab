<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*, com.nit.model.Mobile" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mobile List</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        background: #4CAF50;
        color: white;
        padding: 15px;
        margin: 0;
    }

    .container {
        width: 80%;
        margin: 30px auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
    }

    .card {
        background: white;
        width: 250px;
        padding: 15px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        transition: 0.3s;
    }

    .card:hover {
        transform: scale(1.05);
    }

    .title {
        font-size: 18px;
        font-weight: bold;
        color: #333;
        margin-bottom: 10px;
    }

    .info {
        font-size: 14px;
        margin: 5px 0;
        color: #555;
    }

    .price {
        font-size: 16px;
        color: #e91e63;
        font-weight: bold;
        margin-top: 10px;
    }
</style>

</head>
<body>

<h1>Mobile List Display</h1>

<div class="container">

<%
    List<Mobile> list = (List<Mobile>) request.getAttribute("ListOfMobile");

    for (Mobile m : list) {
%>

    <div class="card">
        <div class="title"><%= m.getMobileName() %></div>
        <div class="info">Model: <%= m.getModel() %></div>
        <div class="price">₹ <%= m.getPrice() %></div>
    </div>

<%
    }
%>

</div>

</body>
</html>