<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 21-10-2020
  Time: 06:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Rooms Information</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <style>
        html{
            margin: 50px;
        }
        .border{
            border-style: solid;
            border-radius: 20px;
            border-width: 4px;
        }

        .card{
            text-transform: capitalize;
            font-size: 15px;
            font-weight: 500;
        }

    </style>
</head>
<body>

<div class="row">
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from rooms";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

    <div class="col s3">
        <div class="card blue-grey darken-1 z-depth-4 border">
            <div class="card-content white-text">
                <p style="
            font-size: 20px;
            font-weight: bold;" class="card-title"><%=resultSet.getString("roomNo") %></p>
                <p>Available : <%=resultSet.getString("available") %></p>
                <p>Clean Status : <%=resultSet.getString("clean") %></p>
                <p>Price : <%=resultSet.getString("price") %></p>
                <p>BedType : <%=resultSet.getString("bedType") %></p>
                <p>Alloted to : <%=resultSet.getString("allotedTo") %></p>
            </div>
        </div>
    </div>

    <%
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</div>

</body>
</html>