<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Book</title>
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
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            margin-top: -40px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 20px;
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
    <div class="content">
        <h2>Search Book</h2>
        <form action="searchBook" method="post">
            <label for="bookTitle">Book Title:</label>
            <input type="text" id="bookTitle" name="bookTitle" required><br><br>
            <input type="submit" value="Search">
        </form>
        <p>${message}</p>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>

