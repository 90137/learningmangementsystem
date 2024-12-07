<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C Programming Chapters</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');
        
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Muli', sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .course-container {
            width: 80%;
            max-width: 900px;
            margin-top: 40px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .course-container h2 {
            text-align: center;
            color: #333;
        }

        .course-list {
            margin-top: 20px;
        }

        .course-list ul {
            list-style-type: none;
            padding: 0;
        }

        .course-list li {
            background-color: #f9f9f9;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            transition: background-color 0.3s;
        }

        .course-list li:hover {
            background-color: #f68600;
            color: #fff;
        }

        .course-list li a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }

        .course-list li a:hover {
            color: #fff;
        }

        .back-btn {
            margin-top: 30px;
            padding: 10px 20px;
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 50px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .back-btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="course-container">
        <h2>C Programming Chapters</h2>

        <div class="course-list">
            <ul>
                <li><a href="#">Chapter 1: Introduction to C</a></li>
                <li><a href="#">Chapter 2: Variables and Data Types</a></li>
                <li><a href="#">Chapter 3: Operators</a></li>
                <li><a href="#">Chapter 4: Control Structures</a></li>
                <li><a href="#">Chapter 5: Functions and Recursion</a></li>
                <li><a href="#">Chapter 6: Arrays</a></li>
                <li><a href="#">Chapter 7: Pointers</a></li>
                <li><a href="#">Chapter 8: Structures and Unions</a></li>
                <li><a href="#">Chapter 9: File Handling</a></li>
            </ul>
        </div>

        <a href="studenthome.jsp" class="back-btn">Back to Dashboard</a>
    </div>
</body>
</html>
