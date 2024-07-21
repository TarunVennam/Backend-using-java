<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
      body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #294c8e;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: -20px;
            height: 50px;
        }

        .navigation {
            background-color: #fff;
            overflow: hidden;
        }

        .navigation a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navigation a:hover {
            background-color: #294c8e;
            color: black;
        }

        .content {
            padding: 20px;
        }

        .footer {
            background-color: #294c8e;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
            margin-top: 20px;
            height: 40px;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            margin-top: -55px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="submit"] {
            width: 50%;
            padding: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
          margin-top: -300px;
            background-color: #294c8e;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #1d3a6e;
            
        }
    </style>
</head>
<body>
 <jsp:include page="header.jsp" />
    <jsp:include page="navigation.jsp" />
<div class="container">
    <h2>Student Registration</h2>
    <form action="registration.jsp" method="post">
        <label for="firstname">First Name:</label>
        <input type="text" id="firstname" name="firstname" required>

        <label for="lastname">Last Name:</label>
        <input type="text" id="lastname" name="lastname" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required>

        <label for="class">Class/Department:</label>
        <input type="text" id="class" name="class" required>

        <label for="level">Level:</label>
        <select id="level" name="level" required>
            <option value="">Select Level</option>
            <option value="level6">level6/year1</option>
             <option value="level6">level6/year2</option>
               <option value="level7">level7/year3</option>
        </select>
      <label for="level">Gender:</label>
      <input type="radio" id="gender" name="female" required>Female
      <input type="radio" id="gender" name="male" required>Male
        <label for="regno">Registration Number:</label>
        <input type="text" id="regno" name="regno" required>

        <input type="submit" value="Register" style="
               margin-left: 400px;">
    </form>
</div>
 <p>${message}</p>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>


