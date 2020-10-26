<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 25-10-2020
  Time: 08:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>

<%
    String id=request.getParameter("ID");
    String number=request.getParameter("custPhn");
    String name=request.getParameter("custName");
    String gender=request.getParameter("gender");
    String country=request.getParameter("custCountry");
    String room_number=request.getParameter("roomNo");
    String deposit=request.getParameter("custDeposit");

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement", "root", "1234");
        Statement st=conn.createStatement();

        st.executeUpdate("insert into customer(id,number,name,gender,country,room_number,deposit)values('"+id+"','"+number+"','"+name+"','"+gender+"','"+country+"','"+room_number+"','"+deposit+"')");
        st.executeUpdate("Update rooms set available = 'Not Available' where roomNo ="+room_number);
        String sql = "update rooms set allotedTo = ? where roomNo ="+room_number;
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, name);
        ps.executeUpdate();
        out.println("Customer inserted!");
        response.sendRedirect("AddCustomer.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>