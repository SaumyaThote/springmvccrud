<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
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
        .navbar {
            background-color: #337ab7;
            border-color: #337ab7;
        }
        .navbar-brand {
            color: #fff;
        }
        .navbar-nav {
            margin-right: 20px;
        }
        .nav-link {
            color: #fff;
        }
        .nav-link:hover {
            color: #ccc;
        }
        .login-btn {
            margin-right: 20px;
            background-color: #337ab7;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
        }
        .login-btn:hover {
            background-color: #23527c;
            color: #fff;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">Home Page</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
                <a href="log" class="login-btn" type="button">Login</a>
            </div>
        </div>
    </nav><br>
    <div class="container">
        <h1>Welcome to our Home Page!</h1>
        <p>“Designing a website can be a bit like being a kid and inheriting a sweetshop. It’s easy to get carried away. There are so many choices.”</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
