<%-- 
    Document   : studentreport
    Created on : 24 Nov, 2023, 9:44:39 AM
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
        <form name="frm" method="post">
            <%@include file="connect.jsp" %>
            <div id="menu">
                <div id="outerbox">
                    <div id="menu">
                        <a href="studentdetail.jsp">Student</a>
                        <a href="selectedstudent.jsp">Search</a>
                        <a href="studentreport.jsp">Report</a>

                    </div>
                </div>
                <div id="centerbox">
                <%                
                    String q = "select sname,email,phoneNo,address,percentage from studentdata";
                    rs = st.executeQuery(q);
                    out.print("<center>");
                    out.print("<table border='1'><tr style='background:maroon; color:pink'><td>NAME</td><td>EMAIL</td><td>PHONE NO</td>"
                            + "<td>ADDRESS</td><td>PERCENTAGE</td></tr>");

                    while (rs.next()) {

                        out.print("<tr><td>" + rs.getString("sname") + "</td><td>" + rs.getString("email") + "</td><td>"
                                + rs.getString("phoneNo") + "</td><td>" + rs.getString("address") + "</td><td>" + rs.getString("percentage") + "</td></tr>");
                    }
                    out.print("</table>");
                    out.print("</center>");
                %>
            </div>
        </form>
    </body>
</html>
