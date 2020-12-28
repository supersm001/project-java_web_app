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
        <title>about</title>
        <link rel="stylesheet" href="CSS/style.css" type="text/css"/>
         <link rel="stylesheet" href="CSS/animate.css" type="text/css"/>
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
           <h1 id="parahead">ABOUT</h1>
                <p id="parabody">
               
                   Online Health Services is a health program launched by govt. for 
                   healthcare of senior citizens of all kinds and for research 
                   with an emphasis on general medicine.
                   Online Health Services are entirly based on voluntier actions and all the 
                   medical facilities are provided to the citizens at the best source. Hence 
                   this is Govt. recognized and also a part of research program so its all 
                   free of cost service provided to senior citizens. All of our clinical studies 
                   done are conducted in strict accordance with the correct guidelines.All 
                   medical staff has over 10 years experience and has gained 
                   credibility within the community and our patients.
                   We truly believe in transparency in communication with our patients who are 
                   participating in a research study. In that spirit of partnership, our team 
                   takes on the responsibility of being the sole point of contact, relaying 
                   information on a continuous basis through the scheduled study visits, emails, 
                   and periodic updates.
                   Our patient’s safety is our top priority and we take all necessary precautions 
                   ensuring that all medications or treatments do not conflict with research 
                   protocols.

                   Medical Health Services has partnered with leading physicians in Miami who 
                   are committed to providing outstanding patient care. All study-related visits 
                   are provided at no expense for the patients.  In addition, participants may be 
                   compensated for time and travel.
                   The experience and love of our medical team is of great benefit to the patients 
                   who are participating on a research study. We love to create trust and lasting 
                   bonds with our research patients. Our team is committed to respecting the 
                   individuality and dignity of all the patients participating in a study.
               </p>
        </header>
         <div id="foot">
           Copyright &copy; 2027 www.OnlineHealthServices.com - All rights reserved
         </div>
    </body>
</html>
