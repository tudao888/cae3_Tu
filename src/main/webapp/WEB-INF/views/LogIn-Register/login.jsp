<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 12/28/2022
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="/WEB-INF/views/LogIn-Register/Css-Login.css">
  <style>
    /* Made with love by Mutiullah Samim*/

    @import url('https://fonts.googleapis.com/css?family=Numans');

    html,body{
      background-image: url('https://scr.vn/wp-content/uploads/2020/07/T%E1%BA%A3i-h%C3%ACnh-n%E1%BB%81n-4k-Si%C3%AAu-xe-Roll-Royce-scaled.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      height: 100%;
      font-family: 'Numans', sans-serif;
    }

    .container{
      height: 100%;
      align-content: center;
    }

    .card{
      height: 370px;
      margin-top: auto;
      margin-bottom: auto;
      width: 400px;
      background-color: rgba(0,0,0,0.5) !important;
    }

    .social_icon span{
      font-size: 60px;
      margin-left: 10px;
      color: #f3dd9e;
    }

    .social_icon span:hover{
      color: white;
      cursor: pointer;
    }

    .card-header h3{
      color: white;
    }

    .social_icon{
      position: absolute;
      right: 20px;
      top: -45px;
    }

    .input-group-prepend span{
      width: 50px;
      background-color: #f3dd9e;
      color: black;
      border:0 !important;
    }

    input:focus{
      outline: 0 0 0 0  !important;
      box-shadow: 0 0 0 0 !important;

    }

    .remember{
      color: white;
    }

    .remember input
    {
      width: 20px;
      height: 20px;
      margin-left: 15px;
      margin-right: 5px;
    }

    .login_btn{
      color: black;
      background-color: #f3dd9e;
      width: 100px;
    }

    .login_btn:hover{
      color: black;
      background-color: white;
    }

    .links{
      color: white;
    }

    .links a{
      margin-left: 4px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="d-flex justify-content-center h-100">
    <div class="card">
      <div class="card-header">
        <h3>Sign In</h3>
        <div class="d-flex justify-content-end social_icon">
        </div>
      </div>
      <div class="card-body">
        <form method="post" action="/login">
          <div class="input-group form-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-user"></i></span>
            </div>
            <input type="text" name="email" class="form-control" placeholder="Email" required>
          </div>
          <div class="input-group form-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-key"></i></span>
            </div>
            <input type="password" name="password" class="form-control" placeholder="Password" required>
          </div>
          <div class="row align-items-center remember">
            <input type="checkbox">Remember Me
          </div>
          <h6 style="color: red">${mess}</h6>
          <div class="form-group">
            <input type="submit" value="Login" class="btn float-right login_btn">
          </div>
        </form>
      </div>
      <div class="card-footer">
        <div class="d-flex justify-content-center links">
          Don't have an account?<a href="/register">Sign Up</a>
        </div>
        <div class="d-flex justify-content-center">
          <a href="#">Forgot your password?</a>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
