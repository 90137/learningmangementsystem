<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Login</title>
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap);

        body {
            background: #f5f5f5;
            font-family: 'Roboto', sans-serif;
        }

        .login-box {
            background: url(https://i.pinimg.com/736x/d1/10/de/d110dee051323ffa6f981d58aa2366ea.jpg);
            background-size: cover;
            background-position: center;
            padding: 50px;
            margin: 50px auto;
            max-width: 600px;
            min-height: 600px;
            border-radius: 8px;
            -webkit-box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
            box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
            color: #333;
        }

        .logo {
            font-family: "Script MT", cursive;
            font-size: 54px;
            text-align: center;
            color: #888888;
            margin-bottom: 30px;
        }

        .logo .logo-font {
            color: #ffc13b;
        }

        .header-title {
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            color: #333;
        }

        .login-form {
            max-width: 400px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            -webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .login-form .form-control {
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: none;
        }

        .login-form .btn {
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }

        .login-form .btn.btn-primary {
            background: #ffc13b;
            border-color: #ffc13b;
            color: #333;
        }

        .login-form .btn.btn-primary:hover {
            background: #e5b500;
            border-color: #e5b500;
        }

        .login-form .text-center a {
            color: #ffc13b;
            text-decoration: none;
        }

        .login-form .text-center a:hover {
            text-decoration: underline;
        }

        .carousel-inner .carousel-item {
            text-align: center;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            -webkit-box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
            box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
        }

        .carousel-indicators {
            bottom: -50px;
        }

        .carousel-indicators li {
            cursor: pointer;
        }

        .carousel-control-prev,
        .carousel-control-next {
            width: 5%;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: #ffc13b;
            border-radius: 50%;
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>

    <section class="body">
        <div class="container">
            <div class="login-box">
                <div class="logo">
                    <span class="logo-font">Go</span>Learnalite
                </div>
                <h3 class="header-title">LOGIN</h3>
                <form class="login-form" method="post" action="checkstudentlogin">
                    <div class="form-group">
                        <input type="text" class="form-control" name="email" placeholder="Email or Username" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary btn-block" type="submit">LOGIN</button>
                    </div>
                    <div class="form-group">
                        <div class="text-center">New Member? <a href="addcustomer">Sign up Now</a></div>
                    </div>
                </form>
                <div class="col-sm-12 hide-on-mobile">
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                        </ul>
                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="slider-feature-card">
                                    <img src="https://i.imgur.com/YMn8Xo1.png" alt="">
                                    <h3 class="slider-title">Welcome To LMS</h3>
                                    <p class="slider-description">Heartily welcome to grow your skills..</p>
                                </div>
                            </div>
                            <!-- 
                            <div class="carousel-item">
                                <div class="slider-feature-card">
                                    <img src="https://i.imgur.com/Yi5KXKM.png" alt="">
                                    <h3 class="slider-title">Providing Best Faculty</h3>
                                    <p class="slider-description">Detailed explanation of every topic by excellent mentors</p>
                                </div>
                            </div>
                        </div>
                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
</body>
</html>
