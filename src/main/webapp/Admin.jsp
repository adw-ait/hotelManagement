<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 06:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <link rel = "stylesheet"
          href = "https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel = "stylesheet"
          href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script type = "text/javascript"
            src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js">
    </script>

    <script type = "text/javascript"
            src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .left{
            width: 30%;
            float: left;
        }

        .right{
            width: 70%;
            float: right;
        }

        .vertical-center {
            margin: 0;
            position: absolute;
            top: 50%;
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);

        }

        html{
            margin: 50px;
        }

        iframe{
            overflow: hidden;

        }

        li{
            font-size: 30px;
        }

    </style>

    <title>Admin</title>

</head>
<body>
<%--<div class="left">--%>
<%--    <div class="vertical-center">--%>
<%--        <a href="select.jsp" class="waves-effect waves-light btn">Select</a><br/><br/>--%>
<%--        <a class="waves-effect waves-light btn" onclick="addEmployee()">Add Employee</a><br/><br/>--%>
<%--        <a class="waves-effect waves-light btn"onclick="addRooms()">Add Rooms</a><br/>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="right">--%>
<%--    <iframe src="" id="addFrame" width="100%" height="100%" style="border: none"></iframe>--%>
<%--</div>--%>
<a href="select.jsp"><i class="medium material-icons">arrow_back</i></a>
<h2>Admin</h2>
<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s3"><a href="#addEmp">Add Employees</a></li>
            <li class="tab col s3"><a href="#addRoom">Add Rooms</a></li>
            <li class="tab col s3"><a href="#empInfo">Employee Info</a></li>
            <li class="tab col s3"><a href="#roomInfo">Rooms Info</a></li>
        </ul>
    </div>
    <div id="addEmp" class="col s12">
        <iframe src="AddEmployee.jsp" width="100%" height="100%" style="border: none" scrolling="no"></iframe>
    </div>
    <div id="addRoom" class="col s12">
        <iframe src="AddRooms.jsp" width="100%" height="100%" style="border: none"></iframe>
    </div>

    <div id="empInfo" class="col s12">
        <iframe src="EmployeeInfo.jsp" width="100%" height="100%" style="border: none" scrolling="no"></iframe>
    </div>

    <div id="roomInfo" class="col s12">
        <iframe src="RoomsInfo.jsp" width="100%" height="100%" style="border: none" scrolling="no"></iframe>
    </div>
</div>

</body>
</html>
