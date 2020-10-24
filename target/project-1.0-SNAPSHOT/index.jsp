<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 04:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <title>Website</title>
    <style>

        .right {
            right: 0;
            height: 100%;
            width: 70%;
            position: fixed;
            z-index: 1;
            top: 0;
            overflow-x: hidden;
            padding-top: 20px;
            margin: 0;
        }

        .left {
            left: 0;
            height: 100%;
            width: 30%;
            position: fixed;
            z-index: 1;
            top: 0;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        img{
            height: 620px;
            object-fit: cover;
        }



    </style>
</head>
<body>
<div class="left">
    <div class="centered">
    <h1>Login</h1>
    <form action = "processLogin.jsp" method="post">
        <div class="row">
            <div class="input-field">
                <input type="text" name="usrName" id="userName" required/>
                <label for="UserName">UserName</label>
            </div></div>
        <div class="row">
            <div class="input-field">
                <input type="password" id="password" name="passw" required/><br/>
                <label for="password">Password</label> <br/>
            </div></div>
        <button class="waves-effect waves-light btn" type="submit" onsubmit="clearInputFields()">Login</button>

    </form>
    </div>
</div>

<div class="right">
    <div class="centered">
    <img src="images\hotel.jpg">
    </div>
</div>

</body>
</html>

<script>
    function clearInputFields(){
        document.getElementById("userName").value = "";
        document.getElementById("password").value = "";
    }
</script>
