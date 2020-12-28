<%-- 
    Document   : login
    Created on : 24 Feb, 2020, 10:45:57 PM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="CSS/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <button onclick="window.location.href='tel:180-000-7272';">Helpline</button>
            </div>
    </div>  
    <div id="adminbtn"> 
      <a href="login.jsp" >User Login</a>    
    </div>
    <div id="logoutbtn">
        <a href="logoutaction.jsp">LOG OUT</a>
    </div>
    <div class="login-box">
        <h1>Admin Login</h1>
            <form action="adminloginaction.jsp" id="laginform">
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" name="username" placeholder="Username"  value="" required>
            </div>
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" name="password" placeholder="Password"  value="" required>
            </div>
            <input class="btn" type="submit"  value="Log In"><br>
            <div>
            <h3><a href="index.html" id="h3">HOME</a></h3>
            </div>
            </form>
    </div>
</body>
      <footer id="foot">
      Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved    
      </footer>
</html>
