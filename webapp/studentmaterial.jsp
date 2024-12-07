<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Materials</title>
    <style>
        /* General page styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #3498db, #8e44ad);
            color: #fff;
            animation: backgroundAnimation 10s ease infinite;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            color: #333;
        }

        .page-title {
            text-align: center;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 40px;
            color: #333;
        }

        .courses-list {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: center;
            padding: 0;
        }

        .course-item {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            width: 30%;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .course-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .course-name {
            font-size: 1.8rem;
            color: #3498db;
            margin-bottom: 10px;
            font-weight: 600;
            text-align: center;
        }

        .course-description {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 20px;
            text-align: center;
        }

        .course-materials {
            margin-top: 20px;
        }

        .material-item {
            margin-bottom: 15px;
            text-align: center;
        }

        .material-link {
            font-size: 1.1rem;
            color: #8e44ad;
            text-decoration: none;
        }

        .material-link:hover {
            color: #3498db;
            text-decoration: underline;
        }

        /* View Course Button */
        .view-course-btn {
            display: block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            font-size: 1.1rem;
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .view-course-btn:hover {
            background-color: #2980b9;
        }

        /* Back Button */
        .back-btn {
            display: block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #8e44ad;
            color: #fff;
            font-size: 1.1rem;
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .back-btn:hover {
            background-color: #3498db;
        }

        @keyframes backgroundAnimation {
            0% {
                background: linear-gradient(135deg, #3498db, #8e44ad);
            }
            50% {
                background: linear-gradient(135deg, #8e44ad, #3498db);
            }
            100% {
                background: linear-gradient(135deg, #3498db, #8e44ad);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .course-item {
                width: 45%;
            }
        }

        @media (max-width: 480px) {
            .course-item {
                width: 90%;
            }
            .page-title {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="page-title">Course Materials</h1>

    <div class="courses-list">
        <!-- Course: Java -->
        <div class="course-item">
            <h2 class="course-name">Java Programming</h2>
            <p class="course-description">Learn the basics and advanced concepts of Java programming, including object-oriented programming, Java libraries, and more.</p>

            <div class="course-materials">
                <h3>Course Materials</h3>
                <ul>
                    <li class="material-item"><a href="https://www.oracle.com/java/" class="material-link" target="_blank">Introduction to Java (Oracle)</a></li>
                    <li class="material-item"><a href="https://www.geeksforgeeks.org/object-oriented-programming-oops-concept-in-java/" class="material-link" target="_blank">Java OOP Concepts (GeeksforGeeks)</a></li>
                    <li class="material-item"><a href="https://www.journaldev.com/1824/java-collections" class="material-link" target="_blank">Java Collections Framework (JournalDev)</a></li>
                </ul>
            </div>
            <a href="courseDetails.jsp?course=java" class="view-course-btn">View Course</a>
        </div>

        <!-- Course: C Programming -->
        <div class="course-item">
            <h2 class="course-name">C Programming</h2>
            <p class="course-description">Master the fundamentals of C programming, including data types, control structures, and memory management.</p>

            <div class="course-materials">
                <h3>Course Materials</h3>
                <ul>
                    <li class="material-item"><a href="https://www.learn-c.org/" class="material-link" target="_blank">Introduction to C (Learn-C.org)</a></li>
                    <li class="material-item"><a href="https://www.geeksforgeeks.org/recursion-in-c/" class="material-link" target="_blank">C Functions and Recursion (GeeksforGeeks)</a></li>
                    <li class="material-item"><a href="https://www.tutorialspoint.com/cprogramming/c_pointers.htm" class="material-link" target="_blank">Understanding C Pointers (TutorialsPoint)</a></li>
                </ul>
            </div>
            <a href="courseDetails.jsp?course=c" class="view-course-btn">View Course</a>
        </div>

        <!-- Course: Enterprise Programming -->
        <div class="course-item">
            <h2 class="course-name">Enterprise Programming</h2>
            <p class="course-description">Explore enterprise-level programming, covering topics like database integration, web services, and frameworks for scalable applications.</p>

            <div class="course-materials">
                <h3>Course Materials</h3>
                <ul>
                    <li class="material-item"><a href="https://www.spring.io/" class="material-link" target="_blank">Introduction to Enterprise Programming (Spring)</a></li>
                    <li class="material-item"><a href="https://www.baeldung.com/spring-boot" class="material-link" target="_blank">Spring Boot Basics (Baeldung)</a></li>
                    <li class="material-item"><a href="https://www.jpa.guru/" class="material-link" target="_blank">JPA Basics (JPA Guru)</a></li>
                </ul>
            </div>
            <a href="courseDetails.jsp?course=enterprise" class="view-course-btn">View Course</a>
        </div>
    </div>

    <!-- Back Button -->
    <a href="studenthome.jsp" class="back-btn">Back to Home</a>
</div>

</body>
</html>
