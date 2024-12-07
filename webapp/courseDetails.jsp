	<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Course Details</title>
	    <style>
	        /* CSS for Course Details Page */
	        body {
	            font-family: Arial, sans-serif;
	            background-color: #f7f7f7;
	            margin: 0;
	            padding: 0;
	            color: #333;
	        }
	
	        .container {
	            width: 80%;
	            margin: 50px auto;
	            background-color: #fff;
	            padding: 30px;
	            border-radius: 10px;
	            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	        }
	
	        .course-title {
	            font-size: 2rem;
	            color: #3498db;
	            margin-bottom: 20px;
	        }
	
	        .course-description,
	        .course-prerequisite,
	        .course-syllabus,
	        .course-books,
	        .course-certificates,
	        .day-to-day-topics {
	            font-size: 1.2rem;
	            margin-bottom: 20px;
	        }
	
	        .course-evaluation {
	            font-size: 1.1rem;
	            margin-top: 20px;
	        }
	
	        .course-evaluation h3 {
	            color: #3498db;
	        }
	
	        .course-materials {
	            margin-top: 30px;
	        }
	
	        .material-item {
	            margin-bottom: 15px;
	        }
	
	        .download-link {
	            color: #8e44ad;
	            text-decoration: none;
	        }
	
	        .download-link:hover {
	            color: #3498db;
	        }
	
	        ul {
	            list-style-type: square;
	        }
	    </style>
	</head>
	<body>
	
	<div class="container">
	    <c:choose>
	        <c:when test="${param.course == 'java'}">
	            <h1 class="course-title">Java Programming</h1>
	            <p class="course-description">Java Programming is a comprehensive course that covers the fundamentals of Java, an object-oriented programming language. The course introduces students to core concepts and equips them with skills to build robust applications.</p>
	
	            <div class="course-prerequisite">
	                <h3>Prerequisite</h3>
	                <p>Basic knowledge of programming concepts is recommended, though not required. Familiarity with concepts such as loops, functions, and basic data structures will be helpful.</p>
	            </div>
	
	            <div class="course-syllabus">
	                <h3>Syllabus</h3>
	                <ul>
	                    <li>Introduction to Java</li>
	                    <li>Data Types and Variables</li>
	                    <li>Control Structures</li>
	                    <li>Object-Oriented Concepts (Classes, Objects, Inheritance, Polymorphism)</li>
	                    <li>Exception Handling</li>
	                    <li>Collections Framework</li>
	                    <li>Multithreading</li>
	                    <li>File I/O</li>
	                    <li>JavaFX (Optional)</li>
	                </ul>
	            </div>
	
	            <div class="day-to-day-topics">
	                <h3>Day-to-Day Topics for Delivery</h3>
	                <ul>
	                    <li>Day 1: Introduction to Java, Setting up the Environment</li>
	                    <li>Day 2: Variables, Data Types, Operators</li>
	                    <li>Day 3-4: Control Flow Statements (if, for, while)</li>
	                    <li>Day 5-6: Classes and Objects</li>
	                    <li>Day 7-9: Inheritance, Polymorphism</li>
	                    <li>Day 10: Exception Handling</li>
	                    <li>Day 11-12: Collections Framework</li>
	                    <li>Day 13-14: Multithreading and Concurrency</li>
	                    <li>Day 15-16: File I/O Operations</li>
	                </ul>
	            </div>
	
	            <div class="course-books">
	                <h3>Reference Books</h3>
	                <ul>
	                    <li>"Core Java Volume I" by Cay S. Horstmann</li>
	                    <li>"Effective Java" by Joshua Bloch</li>
	                    <li>"Java: The Complete Reference" by Herbert Schildt</li>
	                </ul>
	            </div>
	
	            <div class="course-certificates">
	                <h3>Related Certificates</h3>
	                <ul>
	                    <li>Oracle Certified Associate (OCA) Java SE</li>
	                    <li>Oracle Certified Professional (OCP) Java SE</li>
	                    <li>Java SE 11 Developer Certification</li>
	                </ul>
	            </div>
	
	            <div class="course-evaluation">
	                <h3>Evaluation Pattern</h3>
	                <p><strong>Internal Evaluation (Total 50%):</strong></p>
	                <ul>
	                    <li>Semester Exam 1: 18%</li>
	                    <li>Semester Exam 2: 18%</li>
	                    <li>ALM: 8%</li>
	                    <li>Assignments: 8%</li>
	                    <li>Workbook: 8%</li>
	                </ul>
	                <p><strong>External Evaluation (Total 40%):</strong></p>
	                <ul>
	                    <li>Final Exam: 24%</li>
	                    <li>End Lab: 16%</li>
	                </ul>
	            </div>
	
	            <div class="course-materials">
	                <h3>Downloadable Materials</h3>
	                <ul>
	                    <li class="material-item"><a href="path/to/java-course-material.pdf" class="download-link" download>Download Java Course PDF</a></li>
	                </ul>
	            </div>
	        </c:when>
	
	        <c:when test="${param.course == 'c'}">
	            <h1 class="course-title">C Programming</h1>
	            <p class="course-description">C Programming is a powerful general-purpose programming language. This course covers all basic and advanced aspects of C and is ideal for those looking to understand systems programming.</p>
	
	            <div class="course-prerequisite">
	                <h3>Prerequisite</h3>
	                <p>Familiarity with basic programming concepts, such as variables, loops, and control structures.</p>
	            </div>
	
	            <div class="course-syllabus">
	                <h3>Syllabus</h3>
	                <ul>
	                    <li>Introduction to C</li>
	                    <li>Data Types and Variables</li>
	                    <li>Control Structures</li>
	                    <li>Functions and Pointers</li>
	                    <li>Arrays and Strings</li>
	                    <li>Structures and Unions</li>
	                    <li>File Handling</li>
	                </ul>
	            </div>
	
	            <div class="day-to-day-topics">
	                <h3>Day-to-Day Topics for Delivery</h3>
	                <ul>
	                    <li>Day 1: Introduction to C and Setup</li>
	                    <li>Day 2: Variables, Data Types, Operators</li>
	                    <li>Day 3-4: Functions and Pointers</li>
	                    <li>Day 5-6: Arrays and Strings</li>
	                    <li>Day 7-8: Structures and Unions</li>
	                    <li>Day 9: File Handling</li>
	                </ul>
	            </div>
	
	            <div class="course-books">
	                <h3>Reference Books</h3>
	                <ul>
	                    <li>"The C Programming Language" by Brian W. Kernighan and Dennis M. Ritchie</li>
	                    <li>"C Programming: A Modern Approach" by K. N. King</li>
	                    <li>"C in Depth" by Deepali Srivastava</li>
	                </ul>
	            </div>
	
	            <div class="course-certificates">
	                <h3>Related Certificates</h3>
	                <ul>
	                    <li>Certified C Programmer (C-CPT)</li>
	                    <li>Programming in C by Coursera</li>
	                    <li>C Programming Certification by EdX</li>
	                </ul>
	            </div>
	
	            <div class="course-evaluation">
	                <h3>Evaluation Pattern</h3>
	                <p><strong>Internal Evaluation (Total 50%):</strong></p>
	                <ul>
	                    <li>Semester Exam 1: 18%</li>
	                    <li>Semester Exam 2: 18%</li>
	                    <li>ALM: 8%</li>
	                    <li>Assignments: 8%</li>
	                    <li>Workbook: 8%</li>
	                </ul>
	                <p><strong>External Evaluation (Total 40%):</strong></p>
	                <ul>
	                    <li>Final Exam: 24%</li>
	                    <li>End Lab: 16%</li>
	                </ul>
	            </div>
	
	            <div class="course-materials">
	                <h3>Downloadable Materials</h3>
	                <ul>
	                    <li class="material-item"><a href="path/to/c-course-material.pdf" class="download-link" download>Download C Course PDF</a></li>
	                </ul>
	            </div>
	        </c:when>
	
	        <c:when test="${param.course == 'enterprise'}">
	            <h1 class="course-title">Enterprise Programming</h1>
	            <p class="course-description">Enterprise Programming focuses on creating scalable, reliable, and secure applications for large-scale enterprise environments. This course covers various enterprise technologies.</p>
	
	            <div class="course-prerequisite">
	                <h3>Prerequisite</h3>
	                <p>Basic understanding of object-oriented programming, databases, and software engineering principles.</p>
	            </div>
	
	            <div class="course-syllabus">
	                <h3>Syllabus</h3>
	                <ul>
	                    <li>Introduction to Enterprise Programming</li>
	                    <li>Design Patterns</li>
	                    <li>Enterprise Architecture</li>
	                    <li>Spring Framework</li>
	                    <li>Web Services (REST and SOAP)</li>
	                    <li>Security in Enterprise Applications</li>
	                    <li>Database Integration</li>
	                </ul>
	            </div>
	
	            <div class="day-to-day-topics">
	                <h3>Day-to-Day Topics for Delivery</h3>
	                <ul>
	                    <li>Day 1: Introduction to Enterprise Programming</li>
	                    <li>Day 2-3: Design Patterns and Enterprise Architecture</li>
	                    <li>Day 4-6: Spring Framework Basics</li>
	                    <li>Day 7: Working with REST APIs</li>
	                    <li>Day 8-10: Web Services and Security</li>
	                    <li>Day 11-12: Database Integration</li>
	                </ul>
	            </div>
	
	            <div class="course-books">
	                <h3>Reference Books</h3>
	                <ul>
	                    <li>"Spring in Action" by Craig Walls</li>
	                    <li>"Design Patterns: Elements of Reusable Object-Oriented Software" by Erich Gamma et al.</li>
	                    <li>"Java EE 8 Application Development" by Arun Gupta</li>
	                </ul>
	            </div>
	
	            <div class="course-certificates">
	                <h3>Related Certificates</h3>
	                <ul>
	                    <li>Oracle Certified Professional, Java EE</li>
	                    <li>Spring Framework Certification</li>
	                    <li>Certified Java Developer by EdX</li>
	                </ul>
	            </div>
	
	            <div class="course-evaluation">
	                <h3>Evaluation Pattern</h3>
	                <p><strong>Internal Evaluation (Total 50%):</strong></p>
	                <ul>
	                    <li>Semester Exam 1: 18%</li>
	                    <li>Semester Exam 2: 18%</li>
	                    <li>ALM: 8%</li>
	                    <li>Assignments: 8%</li>
	                    <li>Workbook: 8%</li>
	                </ul>
	                <p><strong>External Evaluation (Total 40%):</strong></p>
	                <ul>
	                    <li>Final Exam: 24%</li>
	                    <li>End Lab: 16%</li>
	                </ul>
	            </div>
	
	            <div class="course-materials">
	                <h3>Downloadable Materials</h3>
	                <ul>
	                    <li class="material-item"><a href="path/to/enterprise-course-material.pdf" class="download-link" download>Download Enterprise Course PDF</a></li>
	                </ul>
	            </div>
	        </c:when>
	    </c:choose>
	</div>
	
	</body>
	</html>
