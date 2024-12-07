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

        /* Timetable Styling */
        .timetable {
            width: 80%;
            margin: 40px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .timetable h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #1a73e8;
            color: #fff;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        td:hover {
            background-color: #f0f0f0;
        }

        /* Responsive Design for Small Screens */
        @media (max-width: 768px) {
            .timetable {
                width: 95%;
            }

            table {
                font-size: 14px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav>
    <div class="navbar-container">
        <div class="navbar-logo">
            Learnlite
        </div>
        <div class="navbar-links">
            <a href="view_courses.jsp">Courses</a>
            <a href="students.jsp">Students</a>
            <a href="my_profile.jsp">My Profile</a>
            <a href="logout.jsp" class="logout">Log out</a>
        </div>
    </div>
</nav>

<!-- Timetable Section -->
<div class="timetable">
    <h2>Faculty Timetable</h2>

    <!-- Timetable Table -->
    <table>
        <thead>
            <tr>
                <th>Day</th>
                <th>Course</th>
                <th>Time</th>
                <th>Room</th>
            </tr>
        </thead>
        <tbody>
            <!-- Monday -->
            <tr>
                <td rowspan="2">Monday</td>
                <td>C Programming</td>
                <td>10:00 AM - 12:00 PM</td>
                <td>C Block 101</td>
            </tr>
            <tr>
                <td>Java Programming</td>
                <td>1:00 PM - 3:00 PM</td>
                <td>R Block 201</td>
            </tr>

            <!-- Tuesday -->
            <tr>
                <td rowspan="2">Tuesday</td>
                <td>Enterprise Programming</td>
                <td>9:00 AM - 11:00 AM</td>
                <td>R Block 202</td>
            </tr>
            <tr>
                <td>Java Programming</td>
                <td>2:00 PM - 4:00 PM</td>
                <td>F Block 207</td>
            </tr>

            <!-- Wednesday -->
            <tr>
                <td rowspan="2">Wednesday</td>
                <td>C Programming</td>
                <td>10:00 AM - 12:00 PM</td>
                <td>C Block 107</td>
            </tr>
            <tr>
                <td>Enterprise Programming</td>
                <td>1:00 PM - 3:00 PM</td>
                <td>R Block 201</td>
            </tr>

            <!-- Thursday -->
            <tr>
                <td rowspan="2">Thursday</td>
                <td>Java Programming</td>
                <td>9:00 AM - 11:00 AM</td>
                <td>F Block 211</td>
            </tr>
            <tr>
                <td>C Programming</td>
                <td>2:00 PM - 4:00 PM</td>
                <td>C Block 101</td>
            </tr>

            <!-- Friday -->
            <tr>
                <td rowspan="2">Friday</td>
                <td>Enterprise Programming</td>
                <td>10:00 AM - 12:00 PM</td>
                <td>R Block 202</td>
            </tr>
            <tr>
                <td>C Programming</td>
                <td>1:00 PM - 3:00 PM</td>
                <td>F Block 207</td>
            </tr>
        </tbody>
    </table>
</div>

</body>
</html>
