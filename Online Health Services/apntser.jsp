<%-- 
    Document   : apntser
    Created on : 28 Mar, 2020, 5:22:38 AM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,connect.Connect,java.io.*,java.util.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="CSS/style.css">
        <link rel="stylesheet" href="CSS/style.css" type="text/css"/>
        <link rel="stylesheet" href="CSS/anim.css" type="text/css"/>
    
    
</head>
    
<body class="loginbody">

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
    
    <div id="adminbtn">
        <a href="index.html">HOME</a>
        </div> 
    
    <div id="logoutbtn">
        <a href="logoutaction.jsp">LOG OUT</a>
        </div>
    
    <div class="login-box">
        <h1>Appointment Request</h1>
            <form action="apntaction.jsp" method="post">
            
            <div class="textbox">
               
                <input type="text" placeholder="Purpose of appointment" name="cause" value="" required>
                </div>
                <div class="textbox">
                <input type="date" placeholder="Enter Date" name="date" value="" required>
            </div>
            <input class="btn" type="submit"  value="SUBMIT"><br>
            <div>
            <h3><a href="schlser.jsp" id="h3">SCHEDULE</a></h3><h4><a href="repser.jsp" id="h4">REPORTS</a></h4>
            </div>
            </form>
        </div>
 
                
</body>
      <footer id="foot">
      Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved    
      </footer>
</html>
