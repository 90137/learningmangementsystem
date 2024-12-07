<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html lang="en">
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            background-color: #f4f4f9;
            padding-top: 60px; /* Adjust for fixed navbar */
            transition: background-color 0.3s ease;
        }

        /* Navbar Styling */
        nav {
            background-color: #1a73e8;
            padding: 12px 0;
            text-align: center;
            font-size: 18px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            animation: navbarSlideIn 1s ease-out;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 20px;
            font-weight: 600;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #ff8c00;
        }

        .navbar-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Left Section - Logo */
        .navbar-logo {
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            letter-spacing: 1px;
        }

        /* Right Section - Links */
        .navbar-links {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-links a {
            padding: 10px 20px;
            margin-left: 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: transform 0.3s ease;
        }

        .navbar-links a.logout {
            background-color: #ff4f4f;
            color: #fff;
        }

        .navbar-links a.logout:hover {
            background-color: #ff0000;
            transform: scale(1.1);
        }

        /* Welcome Text Animation */
        .welcome-text {
            font-size: 3rem;
            font-weight: bold;
            color: #1a73e8;
            text-align: center;
            margin-top: 100px;
            animation: fadeInText 2s ease-out;
        }

        /* Fade-in animation for text */
        @keyframes fadeInText {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Navbar Slide-in Animation */
        @keyframes navbarSlideIn {
            0% {
                transform: translateY(-100%);
            }
            100% {
                transform: translateY(0);
            }
        }

        /* Main Content Fade-In Animation */
        .main-content {
            opacity: 0;
            animation: fadeInContent 2s ease-out forwards;
            padding: 20px;
        }

        @keyframes fadeInContent {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Faculty Dashboard Overview */
        .dashboard-overview {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            margin-top: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .dashboard-overview h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 10px;
        }

        .overview-item {
            display: inline-block;
            width: 30%;
            padding: 15px;
            margin: 10px;
            background-color: #e0f7fa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .overview-item:hover {
            background-color: #80deea;
            transform: scale(1.05);
        }

        /* Course List Section */
        .courses-list {
            margin-top: 40px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .course-card {
            background-color: #fff;
            padding: 20px;
            margin: 10px;
            width: 250px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .course-card:hover {
            transform: translateY(-10px);
        }

        .course-title {
            font-size: 1.2rem;
            font-weight: bold;
            color: #1a73e8;
        }

        /* Recent Activities */
        .recent-activities {
            margin-top: 40px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .recent-activities h3 {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 15px;
        }

        .activity-item {
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f1f1f1;
            border-radius: 5px;
        }

        /* Responsive Styling for Small Screens */
        @media (max-width: 768px) {
            .dashboard-overview {
                width: 100%;
                margin: 10px;
            }

            .overview-item {
                width: 100%;
                margin: 10px 0;
            }

            .courses-list {
                flex-direction: column;
                align-items: center;
            }

            .course-card {
                width: 90%;
            }
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav>
    <div class="navbar-container">
        <!-- Left Section: Logo -->
        <div class="navbar-logo">
            Learnlite
        </div>

        <!-- Right Section: Navbar Links -->
        <div class="navbar-links">
            <a href="view_courses.jsp">Courses</a>
            <a href="timetable.jsp">Timetable</a>
            <a href="studentdata1.jsp">Students</a>
            <a href="index.jsp" class="logout">Log out</a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="main-content">
    <p class="welcome-text">Hi ${ename}, welcome to your Faculty Dashboard!</p>

    <!-- Faculty Dashboard Overview -->
    <div class="dashboard-overview">
        <h2>Faculty Overview</h2>
        <div class="overview-item">
            <p>Total Courses: 5</p>
        </div>
        <div class="overview-item">
            <p>Upcoming Classes: 3</p>
        </div>
        <div class="overview-item">
            <p>Students Assigned: 120</p>
        </div>
    </div>

    <!-- Course List Section -->
    <div class="courses-list">
        <div class="course-card">
            <p class="course-title">Course 1: Web Development</p>
            <p>Instructor: ${ename}</p>
            <p>Students Enrolled: 30</p>
        </div>
        <div class="course-card">
            <p class="course-title">Course 2: Data Structures</p>
            <p>Instructor: ${ename}</p>
            <p>Students Enrolled: 25</p>
        </div>
        <!-- Add more course cards here -->
    </div>

    <!-- Recent Activities Section -->
    <div class="recent-activities">
        <h3>Recent Activities</h3>
        <div class="activity-item">Assigned 10 new students to course Web Development</div>
        <div class="activity-item">Gradebook updated for Data Structures</div>
        <div class="activity-item">Scheduled meeting with the Faculty Head</div>
    </div>
</div>

</body>
</html>
	