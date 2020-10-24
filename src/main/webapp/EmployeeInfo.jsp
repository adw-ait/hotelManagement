<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 09:34 PM
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
    <title>Employee Information</title>
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
            String sql ="select * from employee";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

    <div class="col s3">
        <div class="card blue-grey darken-1 z-depth-4 border">
            <div class="card-content white-text">
                <span style="text-transform: capitalize;
            font-size: 20px;
            font-weight: bold;" class="card-title"><%=resultSet.getString("name") %></span>
                <p>Age : <%=resultSet.getString("age") %></p>
                <p>Gender : <%=resultSet.getString("gender") %></p>
                <p>Job : <%=resultSet.getString("job") %></p>
                <p>Salary : <%=resultSet.getString("salary") %></p>
                <p>Phone : <%=resultSet.getString("phone") %></p>
                <p>Aadhar : <%=resultSet.getString("aadhar") %></p>
                <p>E-mail : <%=resultSet.getString("email") %></p>
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
