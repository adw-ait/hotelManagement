<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 24-10-2020
  Time: 01:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "hotelmanagement";
    String userid = "root";
    String password = "1234";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Employee</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <link rel = "stylesheet" href = "https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        html{
            margin: 50px;
        }
        /*label{*/
        /*    font-size: 80px;*/
        /*    font-weight: bold;*/
        /*}*/

        .card-input{
            display: none;
        }
        .card:hover{
            cursor: pointer;
        }

        .card-input:checked + .card {
            box-shadow: 0 0 3px 3px #2ecc71;
        }
    </style>
</head>
<body>
<form method="post" action="processCustomer.jsp">
<div class="row">
    <div  class="input-field">
        <select id="ID" name="ID" required>
            <option value="" disabled selected>Choose your option</option>
            <option value="passport">Passport</option>
            <option value="Aadhar Card">Aadhar Card</option>
        </select>
        <label for="ID">ID</label>
    </div>
</div>

<div class="row">
    <div class="input-field">
        <input type="text" id="custPhn" name="custPhn" required>
        <label for="custPhn">Phone</label>
    </div>
</div>

<div class="row">
    <div class="input-field">
        <input type="text" id="custName" name="custName" required>
        <label for="custName">Name</label>
    </div>
</div>

<div class="row">
    <p style="font-weight: bold; font-size: 18px">Gender</p>
    <p>
        <label>
            <input class="gender" name="gender" id="" type="radio" value="male" />
            <span>Male</span>
        </label>
    </p>

    <p>
        <label>
            <input name="gender" class="gender" type="radio" value="female" />
            <span>Female</span>
        </label>
    </p>
</div>

<div class="row">
    <div class="input-field">
        <input type="text" id="custCountry" name="custCountry" required>
        <label for="custCountry">Country</label>
    </div>
</div>

<div class="row">
    <p style="font-weight: bold; font-size: 18px">Select Room</p>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from rooms";
            resultSet = statement.executeQuery(sql);
            String isAvailable = "Available";
            while(resultSet.next()){
                if (resultSet.getString("available").equals(isAvailable)){
    %>

    <div class="col s3">
        <label>
            <input class="card-input" name="roomNo" type="radio" id="<%=resultSet.getString("bedType") %>" value="<%=resultSet.getString("roomNo") %>"/>
        <div class="card white z-depth-4 border">
            <div class="card-content black-text">
                <p style="font-size: 18px; font-weight: bold" class="card-title">
                    <%=resultSet.getString("roomNo") %>
                </p>
                <p style="font-weight: bold; font-size: 15px">Bedtype : <%=resultSet.getString("bedType") %></p>
                <p style="font-weight: bold; font-size: 15px">Price : <%=resultSet.getString("price") %></p>
            </div>
        </div>
        </label>
    </div>
    <%
            }}
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</div>



<div class="row">
    <div class="input-field">
        <input type="text" id="custDeposit" name="custDeposit" required>
        <label for="custDeposit">Deposit</label>
    </div>
</div>

<div class="row">
<button class="waves-effect waves-light btn" type="submit" id="addCust" name="addCust">Add Customer</button>
</div>
</form>
</body>

<script>
    function updateRoomStatus() {

    }
</script>

<script>
    $(document).ready(function(){
        $('.modal').modal();
        $('select').formSelect();
    });
</script>

<%--<script>--%>
<%--    $(document).ready(function (){--%>
<%--        $("#addCust").click(function (){--%>
<%--            $.ajax({--%>
<%--                url:"processCustomer.jsp",--%>
<%--                type: "post",--%>
<%--                data:{--%>
<%--                    ID:$('#ID').val(),--%>
<%--                    custPhn:$('#custPhn').val(),--%>
<%--                    custName:$('#custName').val(),--%>
<%--                    gender:$('.gender').val(),--%>
<%--                    custCountry:$('#custCountry').val(),--%>
<%--                    roomNo:$('#roomNo').val(),--%>
<%--                    custDeposit:$('#custDeposit').val(),--%>
<%--                    success : function (data){--%>
<%--                        location.reload();--%>
<%--                    }--%>
<%--                }--%>
<%--            })--%>
<%--        })--%>
<%--    })--%>
<%--</script>--%>
