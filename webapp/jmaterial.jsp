<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Programming Materials</title>
    <style>
        /* Styling same as previous example */
        body { font-family: 'Arial', sans-serif; margin: 0; padding: 0; background: linear-gradient(135deg, #3498db, #8e44ad); color: #fff; }
        .container { width: 90%; max-width: 1200px; margin: 50px auto; padding: 30px; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); color: #333; }
        .page-title { text-align: center; font-size: 2.5rem; font-weight: 700; margin-bottom: 40px; color: #333; }
        .material-item { margin-bottom: 15px; text-align: center; }
        .material-link { font-size: 1.1rem; color: #8e44ad; text-decoration: none; }
        .material-link:hover { color: #3498db; text-decoration: underline; }
        .back-btn { padding: 10px 20px; background-color: #8e44ad; color: #fff; font-size: 1.1rem; border: none; border-radius: 5px; text-align: center; cursor: pointer; transition: background-color 0.3s ease; text-decoration: none; }
        .back-btn:hover { background-color: #3498db; }
        .course-evaluation { margin-top: 40px; }
        .course-evaluation h3 { font-size: 1.8rem; margin-bottom: 20px; }
        .course-evaluation ul { list-style-type: none; padding-left: 0; }
        .course-evaluation ul li { font-size: 1.2rem; }
        .course-evaluation p { font-size: 1.2rem; }
    </style>
</head>
<body>

<div class="container">
    <h1 class="page-title">Java Programming Materials</h1>

    <div class="course-materials">
        <h3>Course Materials</h3>
        <ul>
            <li class="material-item"><a href="https://www.oracle.com/java/" class="material-link" target="_blank">Introduction to Java (Oracle)</a></li>
            <li class="material-item"><a href="https://www.geeksforgeeks.org/object-oriented-programming-oops-concept-in-java/" class="material-link" target="_blank">Java OOP Concepts (GeeksforGeeks)</a></li>
            <li class="material-item"><a href="https://www.journaldev.com/1824/java-collections" class="material-link" target="_blank">Java Collections Framework (JournalDev)</a></li>
        </ul>
    </div>

    <!-- Evaluation Pattern Section -->
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

    <!-- Back Button -->
    <a href="view_courses.jsp" class="back-btn">Back to couses</a>
</div>

</body>
</html>
