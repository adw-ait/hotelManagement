<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 20-10-2020
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>

<%
    String roomNo=request.getParameter("roomNum");
    String available=request.getParameter("available");
    String clean=request.getParameter("cleaned");
    String price=request.getParameter("price");
    String bedType=request.getParameter("bedType");


    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement", "root", "1234");
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into rooms(roomNo,available,clean,price,bedType)values('"+roomNo+"','"+available+"','"+clean+"','"+price+"',',"+bedType+"')");
        out.println("Room added");
        response.sendRedirect("AddRooms.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>
