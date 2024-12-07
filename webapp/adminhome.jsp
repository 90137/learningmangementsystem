<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        /* General reset and styling */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            height: 100%;
        }

        h2, h3 {
            font-weight: 600;
            color: #444;
        }

        /* Flexbox for the main content */
        .wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        main {
            flex: 1;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Card container styling */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }

        /* Card styling */
        .card {
            flex: 1;
            min-width: 280px;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            margin: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card h3 {
            margin-bottom: 15px;
            font-size: 1.5em;
            color: #3498db;
        }

        /* Button styling */
        .button {
            display: inline-block;
            background-color: #3498db;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #2980b9;
        }

        /* Section styling */
        section {
            margin-bottom: 50px;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: #fff;
            margin-top: auto;
        }

        @media (max-width: 768px) {
            .card-container {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 100%;
            }
        }
    </style>

    <title>Admin Dashboard</title>
</head>
<body>

    <div class="wrapper">
        <%-- Include navbar if needed --%>
        <%-- <%@ include file="navbar.jsp" %> --%>

        <main>
            <section>
                <h2>Admin Dashboard</h2>
                <p>Welcome, admin! This is your admin dashboard where you can manage users and settings.</p>

                <h3>VIEW DATA</h3>
                <div class="card-container">
                    <div class="card">
                        <h3>View Faculty</h3>
                        <a href="viewallemps" class="button">View</a>
                    </div>
                    <div class="card">
                        <h3>View Students</h3>
                        <a href="studentdata.jsp" class="button">View</a>
                    </div>
                </div>

                <h3>ADD DATA</h3>
                <div class="card-container">
                    <div class="card">
                        <h3>Add Faculty</h3>
                        <a href="empreg" class="button">Add</a>
                    </div>
                    <div class="card">
                        <h3>Add Student</h3>
                        <a href="addcustomer" class="button">Add</a>
                    </div>
                </div>
            </section>

            <section>
                <h2>User Management</h2>
                <p>You can manage user accounts and access control from this section.</p>
            </section>

            <section>
                <h2>Settings</h2>
                <p>Configure system settings and preferences here.</p>
            </section>

            <div style="text-align: center;">
                <a href="/" class="button">Log Out</a>
            </div>
        </main>

        <footer>
            <p>&copy; 2023 Your Admin Panel. All rights reserved.</p>
        </footer>
    </div>

</body>
</html>
