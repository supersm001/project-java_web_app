<%-- 
    Document   : feedbackaction
    Created on : Jun 13, 2020, 2:50:11 AM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Action</title>
    </head>
    <body>
       <% 
        String name = request.getParameter("Name");
          String email = request.getParameter("Email_ID");
          String feedback = request.getParameter("Feedback");
          String complaint = request.getParameter("Complaint");
          String suggestions = request.getParameter("Suggestions");
          
            try
        {
            Connection con=Connect.getConnection();
         
            String query="insert into feedback(Name,Email_ID,Feedback,Complaint,Suggestions)value(?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1,name);
            pmt.setString(2,email);
            pmt.setString(3,feedback);
            pmt.setString(4,complaint);
            pmt.setString(5,suggestions);
            
            pmt.executeUpdate();

            response.sendRedirect("index.html");
         
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
           %>
    </body>
</html>
