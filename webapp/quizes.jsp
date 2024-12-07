<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Quizzes</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f7fb;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .quiz-container {
        max-width: 900px;
        margin: 20px auto;
        padding: 30px;
        background-color: #ffffff;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
        transition: transform 0.3s ease-in-out;
    }

    .quiz-container:hover {
        transform: translateY(-10px);
    }

    h2 {
        text-align: center;
        font-size: 24px;
        color: #333;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .quiz {
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding: 20px;
        background-color: #fafafa;
        border-radius: 8px;
        margin-bottom: 15px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
    }

    .quiz:hover {
        background-color: #e6f7ff;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    }

    .quiz-title {
        font-size: 20px;
        font-weight: bold;
        color: #333;
        margin-bottom: 10px;
        transition: color 0.3s ease;
    }

    .quiz-description {
        font-size: 15px;
        color: #555;
        margin-bottom: 15px;
        line-height: 1.6;
    }

    .take-quiz-btn {
        padding: 12px 25px;
        font-size: 16px;
        background-color: #007bff;
        color: #ffffff;
        text-decoration: none;
        border-radius: 30px;
        display: inline-block;
        text-align: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
    }

    .take-quiz-btn:hover {
        background-color: #0056b3;
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

    .take-quiz-btn:active {
        transform: translateY(2px);
    }
</style>
</head>
<body>

<div class="quiz-container">
    <h2>Available Quizzes</h2>

    <div class="quiz">
        <div class="quiz-title">Java Basics Quiz</div>
        <div class="quiz-description">Test your knowledge on Java fundamentals, including variables, loops, and OOP concepts.</div>
        <a href="takeQuiz.jsp?quizId=1" class="take-quiz-btn">Take Quiz</a>
    </div>

    <div class="quiz">
        <div class="quiz-title">C Programming Essentials</div>
        <div class="quiz-description">Assess your understanding of C programming basics, including pointers, arrays, and functions.</div>
        <a href="takeQuiz.jsp?quizId=2" class="take-quiz-btn">Take Quiz</a>
    </div>

    <div class="quiz">
        <div class="quiz-title">Enterprise Programming Quiz</div>
        <div class="quiz-description">Explore concepts in enterprise-level programming, focusing on frameworks like Spring and Hibernate.</div>
        <a href="takeQuiz.jsp?quizId=3" class="take-quiz-btn">Take Quiz</a>
    </div>
</div>

</body>
</html>
