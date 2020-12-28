<%-- 
    Document   : about
    Created on : Jun 1, 2020, 10:16:09 AM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <link rel="stylesheet" href="CSS/style.css" type="text/css"/>
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
        
    <section class="contact">
        <h2 class="text-center">Feedback</h2>
            <div class="form">
            <form action="feedbackaction.jsp" method="post">
            <div class="textbox">
            <input type="text" class="form-input" name="Name" id="Name" placeholder="Full Name">
            </div>
            <div class="textbox">
            <input type="email" class="form-input" name="Email_ID" id="Email_ID" placeholder="E-mail" required="">
            </div>    
                        
            <div class="textbox">
            <input type="text" class="form-input" name="Feedback" id="Feedback" placeholder="Any Feedback" required="">
            </div>
            <div class="textbox">    
            <input type="text" class="form-input" name="Complaint" id="Complaint" placeholder="Any Conplaint">
            </div>
            <div class="textbox">
            <input type="text" class="form-input" name="Suggestions" id="Suggestions" placeholder="Any Suggestions">
            </div>
            <button class="btn btn-dark">SUBMIT</button>
            </form>
            </div>
    
    </section>
    </header>
        <div id="foot">
           
           Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved
           </div>
        
        </body>
</html>
