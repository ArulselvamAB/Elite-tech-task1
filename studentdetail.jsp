<%-- 
    Document   : studentdetail
    Created on : 23 Nov, 2023, 5:16:20 PM
    Author     : dhilipan A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="design.css">
        <script>
            function validatePhoneNumber() {

                var phoneNumber = document.getElementById('phoneNumber').value;
                if (phoneNumber.length !== 10 && phoneNumber.length === null)
                {
                    alert("Number must be 10 digits");

                }
            }
            }
        </script>

    </head>
    <body>
        <div id="outerbox">
            <%@include file="connect.jsp" %>
            <div id="menu">
                <a href="studentdetail.jsp">Student</a>
                <a href="selectedstudent.jsp">Search</a>
                <a href="studentreport.jsp">Report</a>
            </div>
            <div id="container">
                <form name="frm" method="post">
                    <center>   
                        <h1>Student Register Form</h1>
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
                                <td><input type="submit" name="submit" value="submit" onclick="validatePhoneNumber()"></td>
                            </tr>
                        </table>
                        <%                            String btn = request.getParameter("submit");
                            if (btn != null) {
                                String name = request.getParameter("name");
                                String email = request.getParameter("email");
                                String phone = request.getParameter("phone");
                                String Add = request.getParameter("address");
                                String percent = request.getParameter("percentage");
                                String qry = "select email from studentdata where email='" + email + "'";
                                rs = st.executeQuery(qry);
                                if (rs.next()) {
                                    out.print("Already exists!");
                                } else {
                                    String q = "insert into studentdata (sname,email,phoneNo,address,percentage) "
                                            + "values ('" + name + "','" + email + "','" + phone + "','" + Add + "','" + percent + "')";
                                    int a = st.executeUpdate(q);
                                    if (a > 0) {
                                       out.print("<font color='green'>'Register successfully'</font>");
                                    } else {
                                        out.print("<font color='red'>'Register failed'</font>");
                                    }
                                }
                            }
                        %>
                    </center>
                </form>
            </div>
        </div>
    </body>
</html>
