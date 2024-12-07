<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enterprise Programming Chapters</title>
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
        <h2>Enterprise Programming Chapters</h2>

        <div class="course-list">
            <ul>
                <li><a href="#">Chapter 1: Introduction to Enterprise Programming</a></li>
                <li><a href="#">Chapter 2: Introduction to Spring Framework</a></li>
                <li><a href="#">Chapter 3: Spring Boot Setup</a></li>
                <li><a href="#">Chapter 4: Spring MVC</a></li>
                <li><a href="#">Chapter 5: Spring Data JPA</a></li>
                <li><a href="#">Chapter 6: Spring Security</a></li>
                <li><a href="#">Chapter 7: RESTful Web Services</a></li>
                <li><a href="#">Chapter 8: Integrating with Databases</a></li>
            </ul>
        </div>

       <a href="studenthome.jsp" class="back-btn">Back to Dashboard</a>
    </div>
</body>
</html>
