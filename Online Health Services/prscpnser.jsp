<%-- 
    Document   : prscpnser
    Created on : 28 Mar, 2020, 5:23:42 AM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>prescriptions</title>
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
                <h2 class="text-center">Prescriptions</h2>
            <table class="content-table">
            <thead>
                <tr>
                    <td>Report ID</td>
                    <td>Patient ID</td>
                    <td>Medicine Name</td>
                    <td>Dosage</td>
                    <td>Preventions</td>
                    <td>Does</td>
                </tr>
            </thead>
       <%   
         String username=(String)session.getAttribute("username");
           String pid="";
           try
        {
            Connection con=Connect.getConnection();
           String query="SELECT * FROM patient WHERE User_Name ='" + username + "'";
            
          PreparedStatement pmt=con.prepareStatement(query);
             ResultSet rs1=pmt.executeQuery();
             
           rs1.first();
             pid=rs1.getString("Patient_ID");
            
            
            
            String query1="SELECT * FROM prescriptions WHERE Patient_ID ='" + pid +"'";
            
          PreparedStatement pstmt=con.prepareStatement(query1);
             ResultSet rs=pstmt.executeQuery();
        while(rs.next())
        {
            %>
            <tbody>
            <tr class="active-row">
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                
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
