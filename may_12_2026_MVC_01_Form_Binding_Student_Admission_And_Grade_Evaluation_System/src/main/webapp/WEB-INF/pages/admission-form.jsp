<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family: Arial, sans-serif;
    }

    body{
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
        background: linear-gradient(135deg, #4facfe, #00f2fe);
    }

    .container{
        width:400px;
        background:white;
        padding:30px;
        border-radius:15px;
        box-shadow:0 8px 20px rgba(0,0,0,0.2);
    }

    .container h2{
        text-align:center;
        margin-bottom:25px;
        color:#333;
    }

    .form-group{
        margin-bottom:18px;
    }

    .form-group label{
        display:block;
        margin-bottom:6px;
        font-weight:bold;
        color:#444;
    }

    .form-group input{
        width:100%;
        padding:10px;
        border:1px solid #ccc;
        border-radius:8px;
        font-size:15px;
        transition:0.3s;
    }

    .form-group input:focus{
        border-color:#4facfe;
        outline:none;
        box-shadow:0 0 5px rgba(79,172,254,0.5);
    }

    .btn{
        width:100%;
        padding:12px;
        background:#4facfe;
        color:white;
        border:none;
        border-radius:8px;
        font-size:16px;
        cursor:pointer;
        transition:0.3s;
    }

    .btn:hover{
        background:#007bff;
    }
</style>

</head>
<body>

<div class="container">
    <h2>Student Details Form</h2>

    <form method="post" action="fm">

        <div class="form-group">
            <label>Enter Student Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Enter Student Roll No.</label>
            <input type="text" name="roll" required>
        </div>

        <div class="form-group">
            <label>Enter Student Marks-1</label>
            <input type="text" name="marks1" required>
        </div>

        <div class="form-group">
            <label>Enter Student Marks-2</label>
            <input type="text" name="marks2" required>
        </div>

        <div class="form-group">
            <label>Enter Student Marks-3</label>
            <input type="text" name="marks3" required>
        </div>

        <input type="submit" value="Submit" class="btn">

    </form>
</div>

</body>
</html>