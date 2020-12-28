<%-- 
    Document   : apntaction
    Created on : 19 Apr, 2020, 10:12:11 PM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>appointment action</title>
    </head>
    <body>
       <%
          String username=(String)session.getAttribute("username");
           String cause = request.getParameter("cause");
          String date =request.getParameter("date");
         
         String pid="";
                
          try
        {
            Connection con=Connect.getConnection();
          String query1="SELECT * FROM patient WHERE User_Name ='" + username + "'";
            
          PreparedStatement pstmt=con.prepareStatement(query1);
             ResultSet rs=pstmt.executeQuery();
             
           rs.first();
             pid=rs.getString("Patient_ID");
           
            
         
            String query="insert into appointment(Date_Time,Cause,Patient_ID)value(?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1,date);
            pmt.setString(2,cause);
            pmt.setString(3,pid);
            
            pmt.executeUpdate();
            
            response.sendRedirect("schlser.jsp");
           
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
                
           %>
    </body>
</html>
