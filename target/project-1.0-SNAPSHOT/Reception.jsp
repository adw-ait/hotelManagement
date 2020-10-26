<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 07:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Compiled and minified CSS -->
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
    <title>Reception</title>
    <style>
        .left{
            width: 30%;
            float: left;
        }

        .right{
            width: 70%;
            float: right;
        }

        html{
            margin: 50px;
        }

        li{
            font-size: 30px;
        }

    </style>
</head>
<body>
<%--<h2>Reception</h2>--%>
<%--<div class="left">--%>
<%--    <a href="select.jsp" class="waves-effect waves-light btn">Select</a><br/><br/>--%>
<%--    <a href="#" class="waves-effect waves-light btn">Room</a><br/><br/>--%>
<%--    <a class="waves-effect waves-light btn modal-trigger" onclick="loadEmpInfo()">Employee Info</a><br/><br/>--%>
<%--    <a href="#" class="waves-effect waves-light btn">Manager Info</a><br/><br/>--%>
<%--</div>--%>

<%--<div class="right">--%>
<%--    <div class="">--%>
<%--    <iframe src="" id="empInfoDisplay" width="100%" height="100%" style="border: none"></iframe>--%>
<%--    </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;modal structure&ndash;%&gt;--%>

<a href="select.jsp"><i class="medium material-icons">arrow_back</i></a>
    <h2>Reception</h2>
<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s4"><a href="#addCust">Add Customer</a></li>
            <li class="tab col s4"><a href="#custInfo">Customer Info</a></li>
            <li class="tab col s4"><a href="#roomInfo">Room Info</a></li>
        </ul>
    </div>
    <div id="addCust" class="col s12">
        <iframe src="AddCustomer.jsp" width="100%" height="100%" style="border: none"></iframe>
    </div>
    <div id="custInfo" class="col s12">
        <iframe src="CustomerInfo.jsp" width="100%" height="100%" style="border: none"></iframe>
    </div>
    <div id="roomInfo" class="col s12">
        <iframe src="RoomsInfo.jsp" width="100%" height="100%" style="border: none"></iframe>
    </div>
</div>
</body>
</html>

<script>
    function loadEmpInfo(){
        document.getElementById("empInfoDisplay").src = "EmployeeInfo.jsp";
    }
</script>
