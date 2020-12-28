<%-- 
    Document   : userrequest
    Created on : Jun 12, 2020, 4:42:10 PM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Appointments Requests</title>
        <link rel="stylesheet" href="CSS/style.css" type="text/css"/>
       <link rel="stylesheet" href="CSS/table.css" type="text/css"/>
        <link rel="stylesheet" href="CSS/anim.css" type="text/css"/>
    </head>
    <body>
        <header>
            <div class="mainheader">
            <div class="logo">
                <div class="animated infinite heartBeat"> <img src="images/logo.png" alt=""></div>
            </div>
            <nav>
              
                    <a href="index.html">home</a>     
                    <a href="login.jsp">login</a>       
                    <a href="register.jsp">register</a> 
                    <div class="dropdown">
                    <span>services</span>
                    <div class="dropdown-content">
                    
                    <a href="apntser.jsp">Appointment</a>
                    <br>
                    <a href="schlser.jsp">Schedule</a> 
                    <br>
                    <a href="repser.jsp">Reports</a> 
                    <br>
                    <a href="prscpnser.jsp">Prescriptions</a>       
                      <br>
                    <a href="logout.jsp">LOG OUT</a>
                    <br>
                    </div>
                    </div>
                    <a href="about.jsp">About</a>       
                    <a href="feedback.jsp">Feedback</a>   
                
            </nav>
            <div class="menubtn">
                <button onclick="window.location.href='tel:180-000-7272';">
                    Helpline
                </button>
            </div>
        </div>
        <center>
            
            <table class="content-table2">
            <thead>
                <tr>
                <td><button class="btn" onClick="window.location.href='updateschedule.jsp';">Update Schedule</button></td>
                <td><button class="btn" onClick="window.location.href='updatereports.jsp';">Update Reports</button></td>
                <td><button class="btn" onClick="window.location.href='updateprescriptions.jsp';">Update Prescriptions</button></td>
                 <td><button class="btn" onClick="window.location.href='viewfeedback.jsp';">View Feedback</button></td>
            </tr>
            </thead>
            </table>
        </center>
            <center>
            <table class="content-table">
            <thead>
                <tr>
                    <td>Appointment ID</td>
                    <td>Patient ID</td>
                    <td>Date</td>
                    <td>Cause</td>
                </tr>
            </thead>
       <%   
        try
        {
            Connection con=Connect.getConnection();
          String query1="SELECT * FROM appointment";
            
          PreparedStatement pstmt=con.prepareStatement(query1);
             ResultSet rs=pstmt.executeQuery();
        while(rs.next())
        {
            %>
            <tbody>
            <tr class="active-row">
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
            </tr>
            </tbody>
            <%
        }
             
         }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
        %>
        </table>
        </center>
       
       </header>
            <div id="foot">
           
           Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved
           </div>
        
    </body>
</html>
