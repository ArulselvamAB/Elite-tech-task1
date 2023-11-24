<%-- 
    Document   : connect
    Created on : 24 Nov, 2023, 1:44:39 PM
    Author     : dhilipan A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<form name="frm" method="post">
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/studentdetails","root","");
    Statement st=cn.createStatement();
    ResultSet rs;
%>
</form>
