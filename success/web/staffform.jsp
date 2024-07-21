<%-- 
    Document   : student
    Created on : Jul 20, 2024, 3:37:48 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            margin-top: -45px;
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
            padding: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 10px;
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
         <div class="header">
    <h1>WELCOME TO LIBRARY MANAGEMENT SYSTEM</h1>
</div>
        <nav class="navigation">
    <a href="home.jsp">Home</a>
    <a href="staffform.jsp">Registration</a>
    <a href="searchBook.jsp">Search Book</a>
    <a href="borrowBook.jsp">Borrow Book</a>
    <a href="returnBook.jsp">Return Book</a>
    <a href="fine.jsp">Fine</a>
    <a href="logout.jsp">Logout</a>
</nav>

       
       <div class="footer">
    <p>All Rights Reserved For @IPRC Karongi 2024</p>
</div>
    </body>
</html>


