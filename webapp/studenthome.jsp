<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f3ec78, #af4261);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            color: #333;
        }

        .courses-container {
            width: 100%;
            max-width: 1200px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .course {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .course:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        .course-preview {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
            padding: 30px;
            text-align: center;
        }

        .course-preview h6 {
            opacity: 0.8;
            font-size: 14px;
            text-transform: uppercase;
        }

        .course-preview h2 {
            margin: 15px 0;
            font-size: 22px;
            line-height: 1.5;
        }

        .course-preview a {
            color: #fff;
            font-size: 12px;
            margin-top: 10px;
            text-decoration: none;
            transition: opacity 0.3s ease;
        }

        .course-preview a:hover {
            opacity: 0.7;
        }

        .course-info {
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            flex-grow: 1;
            position: relative;
        }

        .course-info h6 {
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 10px;
            text-transform: uppercase;
            color: #555;
        }

        .course-info h2 {
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.4;
            color: #333;
        }

        .progress-container {
            margin: 20px 0;
        }

        .progress {
            background: #ddd;
            border-radius: 5px;
            height: 10px;
            width: 100%;
            overflow: hidden;
            position: relative;
        }

        .progress::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 66%;
            background: linear-gradient(135deg, #f68600, #ffa500);
        }

        .progress-text {
            font-size: 12px;
            margin-top: 5px;
            color: #666;
        }

        .btn {
            padding: 12px 20px;
            color: #fff;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border: none;
            border-radius: 50px;
            font-size: 14px;
            font-weight: 600;
            text-transform: uppercase;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            text-decoration: none;
            text-align: center;
            display: inline-block;
        }

        .btn:hover {
            background: linear-gradient(135deg, #2575fc, #6a11cb);
            transform: scale(1.1);
        }
    </style>
</head>

<body>
    <%@ include file="studentloginnavbar.jsp" %>
    <div class="courses-container">
        <!-- Course 1 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>Java Programming</h2>
                <a href="chapters.jsp">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <h6>Chapter 4</h6>
                <h2>OOP Concepts</h2>
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">6/9 Challenges</span>
                </div>
                <a href="course1.jsp" class="btn">Continue</a>
            </div>
        </div>

        <!-- Course 2 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>C Programming</h2>
                <a href="c_chapters.jsp">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <h6>Chapter 2</h6>
                <h2>Pointers & Memory</h2>
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">4/9 Challenges</span>
                </div>
                <a href="course2.jsp" class="btn">Continue</a>
            </div>
        </div>

        <!-- Course 3 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>Enterprise Programming</h2>
                <a href="enterprise_chapters.jsp">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <h6>Chapter 3</h6>
                <h2>Spring Framework</h2>
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">5/8 Challenges</span>
                </div>
                <a href="course3.jsp" class="btn">Continue</a>
            </div>
        </div>
    </div>
</body>

</html>
