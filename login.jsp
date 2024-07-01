<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Login Form</title>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #337ab7;
            color: #fff;
            
            background-image: url('https://www.pngmagic.com/product_images/blue-background-images-for-websites.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            max-width: 400px;
            margin: 40px auto;
            padding: 20px;
            background-color: #337ab7;
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
        }
        .login-btn {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            background-color: #337ab7;
            color: #fff;
            border: none;
            border-radius: 5px;
        }
        .login-btn:hover {
            background-color: #23527c;
            color: #fff;
        }
        .new-user-link {
            color: #fff;
            text-decoration: none;
        }
        .new-user-link:hover {
            color: #ccc;
            text-decoration: none;
        }
    </style>
</head>
<body>
<c:set var="sesreg" value="${sesreg}"/>
<c:choose>
<c:when test="${sesreg=='success'}">
<script>swal("Registration successfull, sign in now");</script>
</c:when>
</c:choose>
<c:remove  scope="session" var="sesreg"/>

<c:set var="seslog" value="${seslog}"/>
<c:choose>
<c:when test="${sesreg=='fail'}">
<script>swal("Invalid Password!! Try again.");</script>
</c:when>
</c:choose>
<c:remove  scope="session" var="seslog"/>

    <div class="container">
        <h2>Login Form</h2>
        <form action="dolog" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email"placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password"placeholder="Enter your password">
            </div>
            <button type="submit" class="login-btn">Login</button>
            <p>      Don't have an account? <a href="reg" class="new-user-link">Create one now!</a></p>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
