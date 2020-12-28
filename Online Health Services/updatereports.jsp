<%-- 
    Document   : updatereports
    Created on : Jun 12, 2020, 4:44:18 PM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Reports</title>
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
        <h1>Update Reports</h1>
            <form action="updatereportaction.jsp" method="post">
            
            <div class="textbox">
               
                <input type="text" placeholder="Enter Report_ID" name="Report_ID" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Patient_ID" name="Patient_ID" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Name Of Report" name="Report_Name" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Report_Value" name="Report_Value" value="" required>
                </div>
                 <div class="textbox">
               
                <input type="text" placeholder="Enter Report_Remarks" name="Report_Remarks" value="" required>
                </div>
                <div class="textbox">
               
                <input type="text" placeholder="Enter Doc's Name" name="Doc_Name" value="" required>
                </div>
               
            <input class="btn" type="submit"  value="SUBMIT"><br>
            
            </form>
        </div>
        <div id="foot">
           
           Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved
           </div>
        
    </body>
</html>
