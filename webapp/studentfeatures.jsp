<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Features</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f3ec78, #af4261);
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            font-size: 36px;
            color: #4a90e2;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            padding: 20px;
        }

        .feature {
            background: #f9f9f9;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .feature h3 {
            font-size: 22px;
            font-weight: 600;
            color: #333;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 16px;
            color: #555;
            line-height: 1.6;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background: #4a90e2;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 50px;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
            background: #357abd;
            transform: scale(1.1);
        }

        footer {
            margin-top: 50px;
            text-align: center;
            font-size: 14px;
            color: #777;
        }

        footer a {
            color: #4a90e2;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Course Features</h1>
        <div class="features">
            <!-- Feature 1 -->
            <div class="feature">
                <h3>Interactive Learning</h3>
                <p>Engage with hands-on coding challenges and practical exercises to deepen your understanding.</p>
            </div>

            <!-- Feature 2 -->
            <div class="feature">
                <h3>Expert-Led Tutorials</h3>
                <p>Learn from industry professionals with years of experience in programming and software development.</p>
            </div>

            <!-- Feature 3 -->
            <div class="feature">
                <h3>Comprehensive Content</h3>
                <p>Cover all aspects of the course, from beginner to advanced levels, with detailed explanations.</p>
            </div>

            <!-- Feature 4 -->
            <div class="feature">
                <h3>Flexible Schedule</h3>
                <p>Study at your own pace with content that is available 24/7, accessible from any device.</p>
            </div>

            <!-- Feature 5 -->
            <div class="feature">
                <h3>Certification</h3>
                <p>Receive a course completion certificate to showcase your skills and advance your career.</p>
            </div>

            <!-- Feature 6 -->
            <div class="feature">
                <h3>Real-World Projects</h3>
                <p>Work on industry-relevant projects that simulate real-world scenarios to build your portfolio.</p>
            </div>
        </div>

        <a href="studenthome.jsp" class="btn">Back to Courses</a>
    </div>

    <footer>
        <p>&copy; 2024 Your Learning Platform | <a href="privacy.jsp">Privacy Policy</a></p>
    </footer>
</body>

</html>
