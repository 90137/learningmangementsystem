<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">
<script>
    // JavaScript function for additional validations
    function validateForm() {
        // Name validation (non-empty)
        var name = document.forms["customerForm"]["name"].value;
        if (name == "") {
            alert("Name must be filled out");
            return false;
        }

        // Contact Number validation (10 digits)
        var contactNo = document.forms["customerForm"]["contactno"].value;
        var contactPattern = /^[0-9]{10}$/;
        if (!contactPattern.test(contactNo)) {
            alert("Contact number must be 10 digits");
            return false;
        }

        // Email validation (must contain @gmail.com)
        var email = document.forms["customerForm"]["email"].value;
        var emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
        if (!emailPattern.test(email)) {
            alert("Email must be a valid Gmail address");
            return false;
        }

        // Password length validation (at least 8 characters)
        var password = document.forms["customerForm"]["password"].value;
        if (password.length < 8) {
            alert("Password must be at least 8 characters long");
            return false;
        }

        return true; // Form is valid
    }
</script>

</head>
<body style="background-image: linear-gradient(135deg, #fd7b03, #fff4e0);">

<br>

<h3 align="center"><u>Add Customer</u></h3>

<br>

<form:form method="post" action="insertcustomer" modelAttribute="customer" name="customerForm" onsubmit="return validateForm()">

<table align="center">

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required" />
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required" type="email" /></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required" minlength="8" /></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Address</label></td>
<td>
<form:textarea path="address" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required" pattern="[0-9]{10}" /></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align="center">
<td colspan="2"><input type="submit" value="Add" class="button"><br>
<a href="adminhome">Back</a></td>
</tr>

</table>

</form:form>

</body>
</html>
