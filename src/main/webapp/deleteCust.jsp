<%--
  Created by IntelliJ IDEA.
  User: Adwait001
  Date: 26-10-2020
  Time: 08:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>
<%
    String id=request.getParameter("id");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement", "root", "1234");
        Statement st=conn.createStatement();
        st.executeUpdate("DELETE FROM customer WHERE room_number="+id);
        st.executeUpdate("update rooms set available = 'Available', allotedTo = 'not alloted' where roomNo ="+id);
        out.println("Data Deleted Successfully!");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>