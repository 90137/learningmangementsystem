<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Profile</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            width: 70%;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .profile-header {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        .profile-header img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-right: 20px;
            object-fit: cover;
        }

        .profile-header div {
            font-size: 1.2em;
            color: #333;
        }

        .profile-details {
            margin-top: 20px;
        }

        .profile-details table {
            width: 100%;
            border-collapse: collapse;
        }

        .profile-details table,
        th,
        td {
            border: 1px solid #ddd;
        }

        th,
        td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        .back-button {
            display: inline-block;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>

    <div class="profile-container">
        <h2>Faculty Profile</h2>

        <!-- Profile Header with Image and Name -->
        <div class="profile-header">
            <img src="<c:out value="${faculty.profileImage}" />" alt="Faculty Image" />
            <div>
                <h3><c:out value="${faculty.name}" /></h3>
                <p><strong>Gender:</strong> <c:out value="${faculty.gender}" /></p>
                <p><strong>Age:</strong> <c:out value="${faculty.age}" /></p>
                <p><strong>Experience:</strong> <c:out value="${faculty.experience}" /> years</p>
            </div>
        </div>

        <!-- Profile Details Table -->
        <div class="profile-details">
            <table>
                <tr>
                    <th>Qualification</th>
                    <td><c:out value="${faculty.qualification}" /></td>
                </tr>
                <tr>
                    <th>Research Interests</th>
                    <td><c:out value="${faculty.researchInterests}" /></td>
                </tr>
                <tr>
                    <th>Office Location</th>
                    <td><c:out value="${faculty.officeLocation}" /></td>
                </tr>
            </table>
        </div>

        <!-- Back Button -->
        <a href="facultyList" class="back-button">Back to Faculty List</a>
    </div>

</body>

</html>
