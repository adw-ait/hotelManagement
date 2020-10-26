<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>

<%
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String gender=request.getParameter("gender");
    String job=request.getParameter("jobs");
    String salary=request.getParameter("salary");
    String phone=request.getParameter("phone");
    String aadhar=request.getParameter("aadhar");
    String email=request.getParameter("email");

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement", "root", "1234");
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into employee(name,age,gender,job,salary,phone,aadhar,email)values('"+name+"','"+age+"','"+gender+"','"+job+"','"+salary+"','"+phone+"','"+aadhar+"','"+email+"')");
        out.println("Employee inserted!");
        response.sendRedirect("AddEmployee.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>
