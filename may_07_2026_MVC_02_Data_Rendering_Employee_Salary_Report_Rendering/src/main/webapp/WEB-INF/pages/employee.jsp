<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Salary Report</title>

<style>
    body{
        margin:0;
        padding:0;
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(to right, #4facfe, #00f2fe);
    }

    .container{
        width: 60%;
        margin: 50px auto;
        background: #fff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0px 5px 15px rgba(0,0,0,0.3);
    }

    h1{
        text-align: center;
        color: #2c3e50;
        margin-bottom: 25px;
    }

    .employee-card{
        background: #f4f6f9;
        padding: 20px;
        border-radius: 10px;
        margin-bottom: 25px;
    }

    .employee-card h3{
        margin: 10px 0;
        color: #34495e;
    }

    table{
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table th{
        background: #3498db;
        color: white;
        padding: 12px;
        font-size: 18px;
    }

    table td{
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        font-size: 16px;
    }

    table tr:nth-child(even){
        background: #f9f9f9;
    }

    .net-salary{
        margin-top: 25px;
        text-align: center;
        font-size: 24px;
        font-weight: bold;
        color: #27ae60;
        background: #ecfdf3;
        padding: 15px;
        border-radius: 10px;
    }
</style>

</head>
<body>

<div class="container">

    <h1>Employee Salary Report</h1>

    <div class="employee-card">
        <h3>Employee ID : ${eid}</h3>
        <h3>Employee Name : ${ename}</h3>
        <h3>Department : ${dept}</h3>
    </div>

    <table>
        <tr>
            <th>Salary Component</th>
            <th>Amount</th>
        </tr>

        <tr>
            <td>Basic Salary</td>
            <td>₹ ${basicSalary}</td>
        </tr>

        <tr>
            <td>HRA (20%)</td>
            <td>₹ ${hra}</td>
        </tr>

        <tr>
            <td>DA (10%)</td>
            <td>₹ ${da}</td>
        </tr>

        <tr>
            <td>Bonus (5%)</td>
            <td>₹ ${bonus}</td>
        </tr>

        <tr>
            <td>PF Deduction (12%)</td>
            <td>₹ ${pf}</td>
        </tr>

        <tr>
            <td>Tax Deduction (8%)</td>
            <td>₹ ${tex}</td>
        </tr>
    </table>

    <div class="net-salary">
        Net Salary : ₹ ${netSalary}
    </div>

</div>

</body>
</html>