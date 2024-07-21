<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
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

        .main {
            padding: 20px;
            text-align: center;
        }

        .main h1 {
            margin-bottom: 20px;
        }

        .image-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 20px 0;
        }

        .image-container img {
            width: 300px;
            height: auto;
            margin: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="navigation.jsp" />

    <div class="main">
        <h1>Welcome to the Library Management System</h1>
        <h2>Explore Our Collection</h2>
        <p>Find your next great read among our vast selection of books.</p>
        <div class="image-container">
             <img src="book1.png" alt="Book1">
            <img src="book2.png" alt="Book2">
            <img src="book3.png" alt="Book3">
          
        </div>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>

