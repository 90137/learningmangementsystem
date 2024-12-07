<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Read More Example</title>
    <style>
        .more-content {
            display: none;
            margin-top: 10px;
        }
        .read-more-btn {
            color: blue;
            cursor: pointer;
            text-decoration: underline;
        }
    </style>
    <script>
        function toggleContent() {
            var content = document.getElementById("moreContent");
            var button = document.getElementById("readMoreBtn");
            if (content.style.display === "none") {
                content.style.display = "block";
                button.innerHTML = "Read Less";
            } else {
                content.style.display = "none";
                button.innerHTML = "Read More";
            }
        }
    </script>
</head>
<body>
    <h1>Learn More About E-Education</h1>
    <p>
        E-Education is revolutionizing the way we learn. It allows students to access educational content anywhere and anytime.
        <span id="moreContent" class="more-content">
            It also enables personalized learning paths and provides tools for collaboration between students and instructors.
            Some popular e-education tools include online learning platforms, digital classrooms, and mobile applications.
            These tools help make learning more accessible and engaging.
        </span>
    </p>
    <span id="readMoreBtn" class="read-more-btn" onclick="toggleContent()"></span>
</body>
</html>
