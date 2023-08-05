<%@page import="com.suwahas.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <%@include file="/includes/head.jsp"%>
    <title>User | Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
              background: url('https://i.ibb.co/7gFYDMC/New-Project.png');
              background-repeat: no-repeat;
              background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            padding: 40px;
            margin: 20px auto;
        }

        .logo {
            text-align: center;
            margin-bottom: 20px;
                        font-family: monospace;

        }

        .logo img {
            width: 100px;
            height: auto;
        }

        .card-header {
            background-color: #333333;
            color: #fff;
            font-size: 24px;
            padding: 10px;
            text-align: center;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.2s ease-in-out;
        }

        .form-control:focus {
            outline: none;
            border-color: #007bff;
        }

        .btn-primary {
            background-color: #333311;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 12px 20px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #333333;
        }

        .text-center {
            text-align: center;
        }

        .register-link {
            color: black;
        }

        .register-link:hover {
            text-decoration: underline;
        }

        .footer {
            padding: 10px 0;
            background-color: #333333;
            color: #fff;
            text-align: center;
        }
        
        @media (max-width: 480px) {
            .container {
                max-width: 100%;
                margin: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
       
    </div>

    <div class="container">
        <div class="logo">
            <h3>E-Mart</h3>
        </div>
        <div class="card">
            <div class="card-header">User Login</div>
            <div class="card-body">
               <form action="RegisterServlet" method="post">
                    <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" name="register-name" class="form-control" placeholder="Enter name">
                    </div>
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" name="register-email" class="form-control" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="register-password" class="form-control" placeholder="Password">
                    </div>
                    <div class="text-center">
                        <!-- Use the correct button class -->
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="footer">
        &copy; 2023 E-Mart. All rights reserved.
    </div>

</body>
</html>
