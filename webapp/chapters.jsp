	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Course Chapters</title>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	
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
	        }
	
	        .back-btn:hover {
	            background-color: #2980b9;
	        }
	    </style>
	</head>
	<body>
	
	    <div class="course-container">
	        <h2>Course Chapters</h2>
	
	        <!-- Java Programming Chapters -->
	        <div class="course-list">
	            <h3>Java Programming</h3>
	            <ul>
	                <li><a href="#">Chapter 1: Introduction to Java</a></li>
	                <li><a href="#">Chapter 2: Java Data Types & Variables</a></li>
	                <li><a href="#">Chapter 3: Control Flow Statements</a></li>
	                <li><a href="#">Chapter 4: Java Collections</a></li>
	                <li><a href="#">Chapter 5: Object-Oriented Programming</a></li>
	                <li><a href="#">Chapter 6: Exception Handling</a></li>
	                <li><a href="#">Chapter 7: Java Streams</a></li>
	                <li><a href="#">Chapter 8: Multithreading</a></li>
	                <li><a href="#">Chapter 9: File I/O</a></li>
	            </ul>
	        </div>
	
	
	        <a href="studenthome.jsp" class="back-btn">Back to Dashboard</a>
	    </div>
	
	</body>
	</html>
