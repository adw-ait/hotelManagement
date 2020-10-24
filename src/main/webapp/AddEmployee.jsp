<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 06:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Employee</title>
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
        label{
            font-size: 80px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<form method="post" action="processAddEmp.jsp">
    <%--    name--%>

    <div class="row">
        <div class="input-field">
            <input type="text" id="name" name="name" required>
            <label for="name">Name</label>
        </div>
    </div>

    <%--    age--%>

    <div class="row">
        <div class="input-field">
            <input type="text" id="age" name="age" required>
            <label for="age">Age</label>
        </div>
    </div>

    <%--    gender--%>

    Gender : <br/>

    <input type="radio" id="male" name="gender" value="male">
    <label for="male">Male</label><br>

    <input type="radio" id="female" name="gender" value="female">
    <label for="female">Female</label>
    <br/><br/>

    <%--    job--%>

    <div class="row">
        <div  class="input-field">
            <select id="jobs" name="jobs" required>
                <option value="frontDeskClerk">Front Desk Clerk</option>
                <option value="houseKeeping">House Keeping</option>
                <option value="waiter">Waiter</option>
                <option value="roomService">Room service</option>
                <option value="chef">Chef</option>
                <option value="accountant">Accountant</option>
            </select>
            <label for="jobs">Type of Jobs</label>
        </div>
    </div>

    <%--    salary--%>

    <div class="row">
        <div class="input-field">
            <input type="text" id="salary" name="salary" required>
            <label for="salary">Salary</label>
        </div>
    </div>



    <%--    Phone--%>

    <div class="row">
        <div class="input-field">
            <input type="text" id="phone" name="phone" required>
            <label for="phone">Phone</label>
        </div>
    </div>




    <%--    Aadhar--%>
    <div class="row">
        <div class="input-field">
            <input type="text" id="aadhar" name="aadhar" required>
            <label for="aadhar">Aadhar Id</label>
        </div>
    </div>




    <%--    email--%>
    <div class="row">
        <div class="input-field">
            <input type="email" id="email" name="email" required>
            <label for="email">Email</label>
        </div>
    </div>



    <%--    add employee button--%>
        <button class="waves-effect waves-light btn" type="submit" name="addEmployee">Add Employee</button>
</form>
</body>
</html>
