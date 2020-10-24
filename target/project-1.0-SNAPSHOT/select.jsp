<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 21-10-2020
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <title>Select</title>
    <style>
        .left{
            width: 50%;
            float: left;
        }

        .right{
            width: 50%;
            float: right;
        }

        .block{
            display: block;
            width: 100%;
            height: 90%;
            background-color: deepskyblue;
            font-size: larger;
            text-align: center;
            font-size: 60px;
            font-weight: bold;
            padding-top: 50%;
        }

        .block:hover{
            background-color: dodgerblue;
        }
        .bottom{
            width: 100%;
            float: bottom;
        }
        .blockBtm{
            display: block;
            width: 100%;
            height: 10%;
            font-weight: bold;
            background-color: darkred;
            font-size: 50px;


        }
        .blockBtm:hover{
            background-color: darkred;
        }


    </style>
</head>
<body>
<div class="left">
        <a href="Reception.jsp" class="waves-effect waves-light btn block">Reception</a>
</div>
<div class="right">
        <a href="Admin.jsp" class="waves-effect waves-light btn block">Admin</a>
</div>

<div class="bottom">
        <a href="logout.jsp" class="waves-effect waves-light btn blockBtm">Logout</a>
</div>


</body>
</html>
