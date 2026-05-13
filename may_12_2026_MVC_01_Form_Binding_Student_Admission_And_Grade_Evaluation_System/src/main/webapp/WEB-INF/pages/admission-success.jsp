<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Result</title>

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
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    .result-container{
        width:450px;
        background:#fff;
        padding:30px;
        border-radius:15px;
        box-shadow:0 10px 25px rgba(0,0,0,0.2);
        text-align:center;
    }

    .result-container h1{
        color:#333;
        margin-bottom:25px;
    }

    .result-box{
        background:#f4f6f9;
        padding:15px;
        margin-bottom:15px;
        border-radius:10px;
        text-align:left;
        transition:0.3s;
    }

    .result-box:hover{
        background:#e9f2ff;
        transform:scale(1.02);
    }

    .result-box h3{
        color:#444;
        font-size:18px;
    }

    .label{
        color:#007bff;
        font-weight:bold;
    }

    .grade{
        color:green;
        font-size:22px;
        font-weight:bold;
        text-align:center;
    }
</style>

</head>
<body>

<div class="result-container">

    <h1>🎓 Student Admission Result</h1>

    <div class="result-box">
        <h3><span class="label">Name:</span> ${name}</h3>
    </div>

    <div class="result-box">
        <h3><span class="label">Roll No:</span> ${roll}</h3>
    </div>

    <div class="result-box">
        <h3><span class="label">Total Marks:</span> ${totalMarks}</h3>
    </div>

    <div class="result-box">
        <h3><span class="label">Percentage:</span> ${percentage}%</h3>
    </div>

    <div class="result-box">
        <h3 class="grade">Grade: ${grade}</h3>
    </div>

</div>

</body>
</html>