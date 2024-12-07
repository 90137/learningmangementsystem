	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Course Handout</title>
	    <style>
	        @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');
	        
	        body {
	            font-family: 'Muli', sans-serif;
	            margin: 0;
	            padding: 0;
	            background-image: url('coursebg.jpg');
	            background-size: cover;
	            background-position: center;
	            background-repeat: no-repeat;
	            height: 100vh;
	        }
	
	        .handout-container {
	            padding: 30px;
	            border-radius: 10px;
	            background-color: rgba(255, 255, 255, 0.85); /* Semi-transparent white */
	            backdrop-filter: blur(10px);
	            -webkit-backdrop-filter: blur(10px);
	            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
	            max-width: 900px;
	            margin: 50px auto;
	            transition: transform 0.3s ease, box-shadow 0.3s ease;
	        }
	
	        .handout-container:hover {
	            transform: translateY(-5px); /* Slightly lift the container */
	            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
	        }
	
	        h1 {
	            color: #333;
	            font-size: 2em;
	            text-align: center;
	            margin-bottom: 20px;
	            transition: color 0.3s ease;
	        }
	
	        h1:hover {
	            color: #f68600; /* Change to highlight color */
	        }
	
	        h2 {
	            color: #555;
	            font-size: 1.5em;
	            margin-bottom: 10px;
	        }
	
	        p {
	            color: #777;
	            font-size: 1.1em;
	            line-height: 1.6;
	        }
	
	        table {
	            width: 100%;
	            border-collapse: collapse;
	            margin-top: 20px;
	            background-color: rgba(255, 255, 255, 0.8);
	            border-radius: 10px;
	            overflow: hidden;
	            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	        }
	
	        th, td {
	            padding: 12px;
	            text-align: left;
	        }
	
	        th {
	            background-color: #4CAF50;
	            color: white;
	        }
	
	        td {
	            background-color: #f9f9f9;
	        }
	
	        td, th {
	            transition: background-color 0.3s ease;
	        }
	
	        td:hover, th:hover {
	            background-color: #f1f1f1;
	        }
	
	        input[type="file"] {
	            font-size: 1em;
	            padding: 10px;
	            border: 1px solid #ddd;
	            border-radius: 5px;
	            transition: border-color 0.3s ease, background-color 0.3s ease;
	        }
	
	        input[type="file"]:hover {
	            border-color: #4CAF50;
	            background-color: #f1f1f1;
	        }
	
	        .button {
	            background-color: #4CAF50;
	            color: white;
	            padding: 12px 20px;
	            border: none;
	            border-radius: 5px;
	            font-size: 1.1em;
	            cursor: pointer;
	            transition: background-color 0.3s ease, transform 0.3s ease;
	        }
	
	        .button:hover {
	            background-color: #45a049;
	            transform: translateY(-2px);
	        }
	
	        .back-button {
	            display: inline-block;
	            padding: 10px 20px;
	            background-color: #333;
	            color: white;
	            text-decoration: none;
	            border-radius: 5px;
	            font-size: 1em;
	            transition: background-color 0.3s ease, transform 0.3s ease;
	        }
	
	        .back-button:hover {
	            background-color: #f68600;
	            transform: translateY(-2px);
	        }
	
	        label {
	            display: inline-block;
	            margin-bottom: 8px;
	            font-weight: bold;
	            color: #333;
	        }
	        
	    </style>
	</head>
	<body>
	
	<% 
	    // Get current date
	    java.util.Calendar cal = java.util.Calendar.getInstance(); 
	
	    // Add 7 days to current date
	    cal.add(java.util.Calendar.DATE, 7); 
	    String dueDate = new java.text.SimpleDateFormat("dd MMM yyyy").format(cal.getTime()); 
	%>
	
	<div class="handout-container">
	    <h1>Course Title: JavaScript Fundamentals</h1>
	
	    <h2>Course Description:</h2>
	    <p>This course dives deep into advanced topics in JavaScript, covering concepts like asynchronous programming, closures, and more.</p>
	
	    <h2>Assignment Schedule:</h2>
	    <form action="insertfile" method="post" enctype="multipart/form-data">
	        <table>
	            <thead>
	                <tr>
	                    <th>Assignment No.</th>
	                    <th>Topic</th>
	                    <th>Due Date</th>
	                    <th>Assignment Link</th> <!-- New Column for File Link -->
	                </tr>
	            </thead>
	            <tbody>
	                <tr>
	                    <td>1</td>
	                    <td>Understanding Closures</td>
	                    <td><%= dueDate %></td>
	                    <td><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures" target="_blank">Understanding Closures - MDN</a></td> <!-- Link to Assignment File -->
	                </tr>
	                <tr>
	                    <td>2</td>
	                    <td>Building with Promises</td>
	                    <td><%= dueDate %></td>
	                    <td><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises" target="_blank">Promises in JavaScript - MDN</a></td> <!-- Link to Assignment File -->
	                </tr>
	                <tr>
	                    <td>3</td>
	                    <td>Modern Modules</td>
	                    <td><%= dueDate %></td>
	                    <td><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules" target="_blank">JavaScript Modules - MDN</a></td> <!-- Link to Assignment File -->
	                </tr>
	            </tbody>
	        </table>
	        <br>
	        <div>
	            <label>Upload File</label>
	            <input type="file" name="file" required="required"/>
	        </div>
	        <div>
	            <input type="submit" value="Add" class="button">
	        </div>
	    </form>
	
	    <p><strong>Note:</strong> Make sure to keep up with the assignments and reach out if you need help.</p>
	    
	    <a href="studenthome.jsp" class="back-button">Back</a>
	</div>
	
	</body>
	</html>
