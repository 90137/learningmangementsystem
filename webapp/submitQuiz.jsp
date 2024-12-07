<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Take Quiz</title>
    <style>
        /* Your previous CSS styles */
    </style>
</head>
<body>

<div class="container">
    <%
        String quizId = request.getParameter("quizId");
        if (quizId == null || quizId.isEmpty()) {
    %>
        <h2 class="error-message">Error: No quiz selected</h2>
        <p>Please go back and select a quiz.</p>
    <%
        } else {
            if ("1".equals(quizId)) {
    %>
                <h2>Java Basics Quiz</h2>
                <form action="quiz.jsp" method="post">
                <%-- Java Quiz Questions --%>
                <%
                    String[] javaQuestions = {
                        "What is the size of an int in Java?",
                        "Which of the following is not a Java keyword?",
                        "What is the default value of a boolean in Java?",
                        "Which method is used to start a thread in Java?",
                        "What is the output of 'System.out.println(10 + \"10\");'?",
                        "Which keyword is used to inherit a class in Java?",
                        "What is the parent class of all classes in Java?",
                        "Which of the following is not a primitive data type?",
                        "Which exception is thrown when dividing by zero?",
                        "Which package is imported by default in Java?"
                    };

                    String[][] javaOptions = {
                        {"4 bytes", "8 bytes", "2 bytes", "None of the above"},
                        {"static", "void", "main", "class"},
                        {"false", "true", "null", "Not Initialized"},
                        {"run()", "start()", "init()", "launch()"},
                        {"1010", "20", "10 + 10", "Compilation Error"},
                        {"implements", "inherits", "extends", "overrides"},
                        {"java.util.Object", "java.lang.Object", "Object", "None"},
                        {"int", "double", "String", "char"},
                        {"ArithmeticException", "NullPointerException", "DivideByZeroException", "RuntimeException"},
                        {"java.util", "java.lang", "java.io", "None"}
                    };

                    String[] javaCorrectAnswers = {
                        "4 bytes", "class", "false", "start()", "20", "extends", "java.lang.Object", "String", "ArithmeticException", "java.lang"
                    };

                    for (int i = 0; i < javaQuestions.length; i++) {
                %>
                    <div class="question">
                        <h3><%= (i + 1) %>. <%= javaQuestions[i] %></h3>
                        <ul class="options">
                            <% for (String option : javaOptions[i]) { %>
                                <li><input type="radio" name="q<%= (i + 1) %>" value="<%= option %>"> <%= option %></li>
                            <% } %>
                        </ul>
                    </div>
                <%
                    }
                %>

                <input type="hidden" name="quizId" value="<%= quizId %>">
                <input type="submit" value="Submit" class="submit-btn">
                </form>
    <%
            } else if ("2".equals(quizId)) {
    %>
                <h2>C Programming Essentials</h2>
                <form action="quiz.jsp" method="post">
                <%-- C Programming Quiz Questions --%>
                <%
                    String[] cQuestions = {
                        "What does the `printf` function return?",
                        "What is the correct syntax for declaring a pointer?",
                        "Which header file is required for `printf`?",
                        "Which of the following is not a valid C data type?",
                        "What does the `sizeof` operator return?",
                        "What is the default return type of main()?",
                        "Which function is used to allocate memory dynamically?",
                        "How do you access the value of a variable using a pointer?",
                        "Which keyword is used to define constants?",
                        "Which function is used to read a string in C?"
                    };

                    String[][] cOptions = {
                        {"Number of characters printed", "A void value", "Formatted string", "None of the above"},
                        {"int *ptr;", "int ptr*;", "int &ptr;", "None of the above"},
                        {"<conio.h>", "<math.h>", "<stdio.h>", "<stdlib.h>"},
                        {"int", "float", "bool", "double"},
                        {"Memory size in bytes", "Value", "Type of variable", "None"},
                        {"int", "void", "char", "None"},
                        {"malloc()", "calloc()", "realloc()", "All of the above"},
                        {"Using the address of operator", "Using the value operator", "Direct access", "None"},
                        {"const", "define", "static", "None"},
                        {"gets()", "scanf()", "read()", "fgets()"}
                    };

                    String[] cCorrectAnswers = {
                        "Number of characters printed", "int *ptr;", "<stdio.h>", "bool", "Memory size in bytes", "int", "malloc()", "Using the address of operator", "const", "fgets()"
                    };

                    for (int i = 0; i < cQuestions.length; i++) {
                %>
                    <div class="question">
                        <h3><%= (i + 1) %>. <%= cQuestions[i] %></h3>
                        <ul class="options">
                            <% for (String option : cOptions[i]) { %>
                                <li><input type="radio" name="q<%= (i + 1) %>" value="<%= option %>"> <%= option %></li>
                            <% } %>
                        </ul>
                    </div>
                <%
                    }
                %>

                <input type="hidden" name="quizId" value="<%= quizId %>">
                <input type="submit" value="Submit" class="submit-btn">
                </form>
    <%
            } else {
    %>
                <h2 class="error-message">Error: Invalid quiz ID</h2>
                <p>The selected quiz is not available. Please go back and try again.</p>
    <%
            }
        }
    %>

    <%-- Grading Logic --%>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String[] selectedAnswers = new String[10];  // Assuming 10 questions per quiz
            String[] correctAnswers = null;

            if ("1".equals(request.getParameter("quizId"))) {
                correctAnswers = new String[] {
                    "4 bytes", "class", "false", "start()", "20", "extends", "java.lang.Object", "String", "ArithmeticException", "java.lang"
                };
            } else if ("2".equals(request.getParameter("quizId"))) {
                correctAnswers = new String[] {
                    "Number of characters printed", "int *ptr;", "<stdio.h>", "bool", "Memory size in bytes", "int", "malloc()", "Using the address of operator", "const", "fgets()"
                };
            }

            int score = 0;
            for (int i = 0; i < 10; i++) {
                String selectedAnswer = request.getParameter("q" + (i + 1));
                selectedAnswers[i] = selectedAnswer;

                if (selectedAnswer != null && selectedAnswer.equals(correctAnswers[i])) {
                    score++;
                }
            }

            %>
            <h3>Your Score: <%= score %> / 10</h3>
            <%
        }
    %>
</div>

</body>
</html>
