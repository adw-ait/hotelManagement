<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 25-10-2020
  Time: 10:48 AM
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
    <title>Customer Information</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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

        .delete{
            background: none;
            border: none;
            cursor: pointer;
        }
        .delete:active{
            background: none;
        }
        .delete:visited{
            background: none;
        }

    </style>
</head>
<body>



<div class="row" >
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from customer";
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){
    %>

    <div class="col s3">
        <div class="card blue-grey darken-1 z-depth-4 border">
            <div class="card-content white-text">
                <span style="text-transform: capitalize;
            font-size: 20px;
            font-weight: bold;" class="card-title"><%=resultSet.getString("name") %></span>
                <p>ID : <%=resultSet.getString("id") %></p>
                <p>Phone : <%=resultSet.getString("number") %></p>
                <p>Gender : <%=resultSet.getString("gender") %></p>
                <p>Country : <%=resultSet.getString("country") %></p>
                <p>Room No : <%=resultSet.getString("room_number") %></p>
                <p>deposit : <%=resultSet.getString("deposit") %></p>
                <div style="float: right">
                    <button class="delete" type="button" id="<%=resultSet.getString("room_number") %>"><i class="material-icons">delete</i></button>
                </div>
                <br/>
            </div>
        </div>
    </div>

    <%
                i++;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</div>



</body>
</html>

<script>
    $(document).ready(function(){
        $('.modal').modal({'opacity' : 0});
        $('select').formSelect();
    });
</script>

<script>
    $(document).ready(function (){
        $(".delete").click(function (){
            let response = confirm("Do you want to Delete!!");
            if (response == true) {
                var id = +this.id;
                $.ajax({
                    url: "deleteCust.jsp",
                    type: "post",
                    data: {
                        id: id,
                    },
                    success: function (data) {
                        location.reload();
                    }
                });
            }
        });
    });
</script>

