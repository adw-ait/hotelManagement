<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 07:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Rooms</title>
    <meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <link rel = "stylesheet"
          href = "https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel = "stylesheet"
          href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script type = "text/javascript"
            src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js">
    </script>

    <script>
        $(document).ready(function(){
            $('select').material_select();
        });
    </script>

    <style>
        html{
            margin: 50px;
        }
    </style>
</head>
<body>
<form action="processAddRooms.jsp" method="post">


    <%--room number--%>
    <div class="row">
        <div class="input-field">
            <input type="text" id="roomNum" name="roomNum">
            <label for="roomNum">Room Number</label>
        </div>
    </div>

    <%--Availability--%>

    <div class="row">
        <div class="input-field">

            <select id="available" name="available">
                <option value="available">Available</option>
                <option value="not available">Not Available</option>
            </select>
            <label for="available">Availability</label>
        </div>
    </div>

    <%--Cleaned--%>
    <div class="row">
        <div class="input-field">

            <select id="cleaned" name="cleaned">
                <option value="clean">Cleaned</option>
                <option value="notClean">Not Cleaned</option>
            </select>
            <label for="cleaned">Cleaning Status</label>
        </div>
    </div>

    <%--Price--%>
    <div class="row">
        <div class="input-field">
            <input type="text" id="price" name="price"><br/><br/>
            <label for="price">Price</label>
        </div>
    </div>


    <%--bed type --%>
    <div class="row">
        <div class="input-field">
            <select id="bedType" name="bedType">
                <option value="single">Single</option>
                <option value="double">Double</option>
            </select>
            <label for="bedType">Bed Type</label>
        </div>
    </div>

    <%--add room--%>
    <button class="waves-effect waves-light btn" type="submit" name="addRoom">Add Rooms</button>
</form>
</body>
</html>
