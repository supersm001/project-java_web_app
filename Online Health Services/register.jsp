<%-- 
    Document   : register
    Created on : 25 Feb, 2020, 2:51:44 AM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="CSS/style.css">
            <link rel="stylesheet" href="CSS/anim.css" type="text/css"/>

    </head>
   
    <body class="regbody">
        
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
        
        <div class="reg-box">
            <h1>Register New</h1>
            <form action="registeraction.jsp" method="post" id="registerform">
            
            <div class="textbox">
                <input type="text" placeholder="Full Name" name="name" value="" required>
            </div>
           
            
            <div>
                <div class="textbox2">Gender</div>
                
                <select name="gender" class="textbox3">
                    <option>Select </option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Others</option>
                </select>
            </div>   
            
            
            <div class="textbox">
                <input type="number" placeholder="Age" name="age"  required >
            </div>
            
            <div class="textbox">
                <input type="text" placeholder="Full Address" name="address"  required>
            </div>
            
            <div class="textbox">
                <input type="number" placeholder="Mobile Number" name="phone" required>
            </div>
            
            <div class="textbox">
                <input type="text" placeholder="Username"  name="username"  required>
            </div>
            
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            
            <input class="btn" type="submit"  value="SUBMIT">
            <div>
            <h3><a href="index.html" id="h3">HOME</a></h3><h4><a href="login.jsp" id="h4">LOG IN</a></h4>
            </div>
    </form>
            
        </div>
       
        </body>
        <footer id="foot">
      Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved    
      </footer>
</html>
