<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Take Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #444;
        }
        .question {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .question h3 {
            margin: 0 0 10px;
        }
        .options {
            list-style: none;
            padding: 0;
        }
        .options li {
            margin-bottom: 5px;
        }
        .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
        .error-message {
            color: red;
            text-align: center;
        }
        .score {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: green;
            margin-top: 20px;
        }
    </style>
    <script>
        function validateForm() {
            var questions = document.querySelectorAll('.question');
            var isValid = true;

            questions.forEach(function (question) {
                var selectedOption = question.querySelector('input[type="radio"]:checked');
                if (!selectedOption) {
                    isValid = false;
                    question.style.border = '2px solid red';
                } else {
                    question.style.border = '1px solid #ddd';
                }
            });

            if (!isValid) {
                alert('Please select an answer for each question!');
            }
            return isValid;
        }

        function submitQuiz(event) {
            event.preventDefault(); // Prevent normal form submission

            // Validate form
            if (!validateForm()) return;

            // Collect form data
            var formData = new FormData(document.querySelector('form'));

            // Create AJAX request
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'quiz.jsp', true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById('scoreContainer').innerHTML = xhr.responseText;
                }
            };
            xhr.send(formData);
        }
    </script>
</head>
<body>
    <div class="container">
        <% 
            String quizId = request.getParameter("quizId");
            if (quizId == null || quizId.isEmpty()) { 
        %>
            <h2 class="error-message">Error: No quiz selected</h2>
            <p>Please go back and select a quiz.</p>
        <% } else { %>
            <h2><%= "1".equals(quizId) ? "Java Basics Quiz" : "C Programming Essentials" %></h2>
            <form onsubmit="submitQuiz(event)">
                <%
                    String[] questions;
                    String[][] options;
                    if ("1".equals(quizId)) {
                        questions = new String[] {
                            "What is the size of an int in Java?",
                            "Which of the following is not a Java keyword?",
                            "What is the default value of a boolean in Java?",
                            "Which method is used to start a thread in Java?",
                            "What is the output of 'System.out.println(10 + \"10\");'?"
                        };
                        options = new String[][] {
                            {"4 bytes", "8 bytes", "2 bytes", "None of the above"},
                            {"static", "void", "main", "class"},
                            {"false", "true", "null", "Not Initialized"},
                            {"run()", "start()", "init()", "launch()"},
                            {"1010", "20", "10 + 10", "Compilation Error"}
                        };
                    } else {
                        questions = new String[] {
                            "What does the `printf` function return?",
                            "What is the correct syntax for declaring a pointer?",
                            "Which header file is required for `printf`?",
                            "Which of the following is not a valid C data type?",
                            "What does the `sizeof` operator return?"
                        };
                        options = new String[][] {
                            {"Number of characters printed", "A void value", "Formatted string", "None of the above"},
                            {"int *ptr;", "int ptr*;", "int &ptr;", "None of the above"},
                            {"<conio.h>", "<math.h>", "<stdio.h>", "<stdlib.h>"},
                            {"int", "float", "bool", "double"},
                            {"Memory size in bytes", "Value", "Type of variable", "None"}
                        };
                    }

                    for (int i = 0; i < questions.length; i++) {
                %>
                    <div class="question">
                        <h3><%= (i + 1) %>. <%= questions[i] %></h3>
                        <ul class="options">
                            <% for (String option : options[i]) { %>
                                <li>
                                    <input type="radio" name="q<%= (i + 1) %>" value="<%= option %>"> <%= option %>
                                </li>
                            <% } %>
                        </ul>
                    </div>
                <% } %>
                <input type="hidden" name="quizId" value="<%= quizId %>">
                <input type="submit" value="Submit" class="submit-btn">
            </form>
            <div id="scoreContainer"></div>
        <% } %>
    </div>
</body>
</html>
	