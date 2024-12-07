<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            padding: 20px 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .back-button {
            display: block;
            width: 150px;
            margin: 20px auto;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #45a049;
        }

        .back-button:focus {
            outline: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>List of Students</h2>
        
        <!-- Table to display the hardcoded student data -->
        <table>
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>Contact No</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <!-- Hardcoded student data -->
                <tr>
                    <td>1</td>
                    <td>Sai</td>
                    <td>Male</td>
                    <td>sai@gmail.com</td>
                    <td>8956235623</td>
                    <td>Employees colony</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Praneeth Chowdary</td>
                    <td>Female</td>
                    <td>aaa@akjkjnakl</td>
                    <td>123</td>
                    <td>Employees colony</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Sai1</td>
                    <td>Male</td>
                    <td>sai1@gmail.com</td>
                    <td>1231231231</td>
                    <td>Employees colony</td>
                </tr>
            </tbody>
        </table>

        <!-- Back button -->
        <a href="emphome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
