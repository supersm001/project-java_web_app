<%-- 
    Document   : updateappoint
    Created on : Jun 12, 2020, 4:43:17 PM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Schedule</title>
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
        <div class="login-box">
        <h1>Update Schedule</h1>
            <form action="updateschdlaction.jsp" method="post">
            
            <div class="textbox">
               
                <input type="text" placeholder="Enter Appoint_ID" name="Appoint_ID" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Patient_ID" name="Patient_ID" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Checkup Type" name="Checkup_Type" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Date/Time of Checkup" name="Date_Time" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Any Sample Should Required" name="Carry_Sample" value="" required>
                </div>
                <div class="textbox">
               
                <input type="text" placeholder="Enter Room NO." name="Room_No" value="" required>
                </div>
               
            <input class="btn" type="submit"  value="SUBMIT"><br>
            
            </form>
        </div>
        
       
        <div id="foot">
           
           Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved
           </div>
        
    </body>
</html>
