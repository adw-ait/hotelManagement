<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 21-10-2020
  Time: 07:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String username=request.getParameter("usrName");
    session.putValue("usrName",username);
    String password=request.getParameter("passw");
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","1234");
    Statement st= con.createStatement();
    ResultSet rs=st.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");

    try{
        if(rs.next()){
            if(rs.getString("password").equals(password) && rs.getString("username").equals(username)) {
                out.println("Welcome " + username);
                response.sendRedirect("select.jsp");
            }
        }
        else{
            out.println("Invalid password or username.");
            response.sendRedirect("index.jsp");
        }

    }
    catch (Exception e) {
        e.printStackTrace();
    }


%>