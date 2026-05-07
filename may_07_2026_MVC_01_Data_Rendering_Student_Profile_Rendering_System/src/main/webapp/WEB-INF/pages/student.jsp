<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>

    <style>
        body {
            font-family: Arial;
            margin: 30px;
            background-color: #f4f4f4;
        }

        .container {
            width: 700px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: darkblue;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        .info {
            margin-top: 20px;
        }

        .info p {
            font-size: 18px;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Student Profile</h1>

    <div class="info">
        <p><strong>Student ID:</strong> ${student.id}</p>
        <p><strong>Student Name:</strong> ${student.name}</p>
        <p><strong>Course:</strong> ${student.course}</p>
        <p><strong>College Name:</strong> ${student.college}</p>
    </div>

    <table>
        <tr>
            <th>Subject</th>
            <th>Marks</th>
        </tr>

        <tr>
            <td>Subject 1</td>
            <td>${student.subject1}</td>
        </tr>

        <tr>
            <td>Subject 2</td>
            <td>${student.subject2}</td>
        </tr>

        <tr>
            <td>Subject 3</td>
            <td>${student.subject3}</td>
        </tr>

        <tr>
            <td>Subject 4</td>
            <td>${student.subject4}</td>
        </tr>

        <tr>
            <td>Subject 5</td>
            <td>${student.subject5}</td>
        </tr>

        <tr>
            <th>Total Marks</th>
            <th>${total}</th>
        </tr>

        <tr>
            <th>Average</th>
            <th>${average}</th>
        </tr>

        <tr>
            <th>Grade</th>
            <th>${grade}</th>
        </tr>

    </table>

</div>

</body>
</html>