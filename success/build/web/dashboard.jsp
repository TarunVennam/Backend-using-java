<%-- 
    Document   : dashboard
    Created on : Jul 20, 2024, 3:51:43 PM
    Author     : user
--%>


<%@page language="java" contentType="text/html Charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
}

.dashboard {
    display: flex;
    width: 80%;
    height: 80vh;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #ffffff;
}

.sidebar {
    width: 20%;
    background-color: #e3e9fe;
    padding: 20px;
    display: flex;
    flex-direction: column;
}

.sidebar h2 {
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
}

.sidebar ul {
    list-style: none;
}

.sidebar ul li {
    margin-bottom: 15px;
}

.sidebar ul li a {
    text-decoration: none;
    font-size: 18px;
    color: #333;
    display: block;
}

.sidebar ul li a:hover {
    color: #007bff;
}

.sidebar .logout {
    margin-top: auto;
    background-color: #294c8e;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    text-align: center;
}

.sidebar .logout a {
    color: #ffffff;
    text-decoration: none;
}

.sidebar .logout:hover {
    background-color: #56f;
}

.main-content {
    width: 80%;
    padding: 20px;
    display: flex;
    flex-direction: column;
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #294c8e;
    padding: 10px;
    color: #ffffff;
}

.header h1 {
    font-size: 20px;
}

.header .user-info {
    display: flex;
    align-items: center;
}

.header .user-info span {
    margin-right: 10px;
    font-size: 18px;
}

.header .user-info img {
    width: 24px;
    height: 24px;
    margin-left: 10px;
}

.actions {
    display: flex;
    justify-content: space-around;
    margin-top: 30px;
}

.actions .action-button {
    background-color: #294c8e;
    color: #ffffff;
    border: none;
    padding: 15px 20px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.actions .action-button:hover {
    background-color: #294c8e;
}

footer {
    margin-top: auto;
    background-color: #294c8e;
    color: #ffffff;
    text-align: center;
    padding: 10px 0;
    font-size: 16px;
}

    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="dashboard">
        <div class="sidebar">
            <h2>Library MS</h2>
            <ul>
                <li><a href="Manage users.html">Manage users</a></li>
                <li><a href="Fines.html">Fines</a></li>
                <li><a href="Update Books.html">Update Books</a></li>
                <li><a href="Maintain books.html">Maintain books</a></li>
                <li><a href="Issue Books.html">Issue Books</a></li>
            </ul>
            <button class="logout"><a href="loginform.jsp">logout</a></button>
        </div>
        <div class="main-content">
            <div class="header">
                <h1>WELCOME TO LIBRARY MANAGEMENT SYSTEM</h1>
               
            </div>
            <div class="actions">
                <a href="#" class="action-button">Manage Books</a>
                <a href="#" class="action-button">Calculate fines <span>💰</span></a>
                <a href="#" class="action-button">Generate a report</a>
                <a href="#" class="action-button">View borrowed books</a>
            </div>
            <footer>
                ALL Rights Reserved For @IPRC Karongi 2024
            </footer>
        </div>
    </div>
</body>
</html>

