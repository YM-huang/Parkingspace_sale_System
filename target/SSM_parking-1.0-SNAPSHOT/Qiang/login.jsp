<%--
  Created by IntelliJ IDEA.
  User: 95243
  Date: 2021/11/23
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- 引入css、js -->
    <link rel="stylesheet" href="<%=path%>/assets/css/index.css">
    <script src="<%=path%>/assets/js/index.js"></script>
</head>
<body>
<!-- 搭建结构 -->
<div class="container switch">
    <!-- 注册页面 -->
    <div class="container-form container-signup">
        <form action="" class="form">
            <h2 class="form-title">Sign Up</h2>
            <input type="text" placeholder="User" class="input">
            <input type="email" placeholder="Email" class="input">
            <input type="password" placeholder="Password" class="input">
            <button class="submit">sign up</button>
        </form>
    </div>
    <!-- 登录页面 -->
    <div class="container-form container-signin">
        <form action="javascript:void(0);" class="form">
            <h2 class="form-title">Sign In</h2>
            <input type="text" placeholder="User" class="input">
            <input type="password" placeholder="Password" class="input">
            <a href="javascript:void(0);">forgot your password?</a>
            <button class="submit">sign in</button>
        </form>
    </div>
    <!-- 覆盖层 -->
    <div class="container-overlay">
        <div class="overlay">
            <div class="overlay-slide overlay-left">
                <button class="submit" id="goSignIn">sign in</button>
            </div>
            <div class="overlay-slide overlay-right">
                <button class="submit" id="goSignUp">sign up</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<!-- 结构搭建完成 -->
