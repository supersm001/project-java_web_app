<%-- 
    Document   : updateschdlaction
    Created on : Jun 13, 2020, 12:55:53 AM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Schedule</title>
    </head>
    <body>
        <% 
        String aid = request.getParameter("Appoint_ID");
          String pid =request.getParameter("Patient_ID");
          String ctype = request.getParameter("Checkup_Type");
          String date =request.getParameter("Date_Time");
          String sample = request.getParameter("Carry_Sample");
          String room =request.getParameter("Room_No");
            try
        {
            Connection con=Connect.getConnection();
         
            String query="insert into schedule(Appoint_ID,Patient_ID,Checkup_Type,Date_Time,Carry_Sample,Room_No)value(?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1,aid);
            pmt.setString(2,pid);
            pmt.setString(3,ctype);
            pmt.setString(4,date);
            pmt.setString(5,sample);
            pmt.setString(6,room);
            pmt.executeUpdate();

            response.sendRedirect("userrequest.jsp");
         
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
           %>
    </body>
</html>
