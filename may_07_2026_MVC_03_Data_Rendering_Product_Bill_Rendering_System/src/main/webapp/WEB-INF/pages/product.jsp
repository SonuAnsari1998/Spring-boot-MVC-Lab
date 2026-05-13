<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Bill</title>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family: Arial, Helvetica, sans-serif;
    }

    body{
        background: linear-gradient(135deg, #4facfe, #00f2fe);
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
    }

    .bill-container{
        width:420px;
        background:#fff;
        padding:30px;
        border-radius:15px;
        box-shadow:0 8px 20px rgba(0,0,0,0.2);
    }

    .bill-title{
        text-align:center;
        color:#2c3e50;
        margin-bottom:25px;
        font-size:28px;
        border-bottom:2px solid #3498db;
        padding-bottom:10px;
    }

    .bill-row{
        display:flex;
        justify-content:space-between;
        margin:15px 0;
        font-size:18px;
    }

    .label{
        font-weight:bold;
        color:#34495e;
    }

    .value{
        color:#2d3436;
    }

    .final-amount{
        margin-top:25px;
        background:#27ae60;
        color:white;
        padding:15px;
        border-radius:10px;
        text-align:center;
        font-size:22px;
        font-weight:bold;
        box-shadow:0 4px 10px rgba(0,0,0,0.2);
    }

</style>
</head>

<body>

    <div class="bill-container">

        <h1 class="bill-title">Product Bill</h1>

        <div class="bill-row">
            <span class="label">Product ID</span>
            <span class="value">${productId}</span>
        </div>

        <div class="bill-row">
            <span class="label">Product Name</span>
            <span class="value">${productName}</span>
        </div>

        <div class="bill-row">
            <span class="label">Quantity</span>
            <span class="value">${qty}</span>
        </div>

        <div class="bill-row">
            <span class="label">Price per Item</span>
            <span class="value">₹ ${price}</span>
        </div>

        <div class="bill-row">
            <span class="label">GST</span>
            <span class="value">${gst}%</span>
        </div>

        <div class="bill-row">
            <span class="label">Discount</span>
            <span class="value">${discount}%</span>
        </div>

        <div class="final-amount">
            Final Bill Amount: ₹ ${finalBill}
        </div>

    </div>

</body>
</html>