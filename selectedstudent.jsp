<%-- 
    Document   : selectedstudent
    Created on : 24 Nov, 2023, 9:40:39 AM
    Author     : dhilipan A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="design.css">
    </head>
    <body>
        <div id="outerbox">
            <div id="menu">
                <a href="studentdetail.jsp">Student</a>
                <a href="selectedstudent.jsp">Search</a>
                <a href="studentreport.jsp">Report</a>
            </div>
            <div id="container">
                <form name="frm" method="post">
                    <center>   
                        <h1>Selected  Form</h1>
                        <table>
                            <tr>
                                <td>
                                    Student Name:
                                </td>
                                <td><input type="text" name="name" required autofocus ></td>
                            </tr>
                            <tr>
                                <td>
                                    Email:
                                </td>
                                <td><input type="email" name="email" required ></td>
                            </tr>
                            <tr>
                                <td>
                                    Phone No:
                                </td>
                                <td><input type="text" id="phoneNumber" name="phone"  ></td>
                            </tr>
                            <tr>
                                <td>
                                    Address:
                                </td>
                                <td><input type="text" name="address" required ></td>
                            </tr>
                            <tr>
                                <td>
                                    Percentage:
                                </td>
                                <td><input type="number" name="percentage" required autofocus ></td>
                            </tr>
                            <tr>
                                <td><input type="submit" name="submit" value="search" ></td>
                            </tr>
                        </table>
                </form>
            </div>

    </body>
</html>
