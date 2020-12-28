<%-- 
    Document   : updateprcrpaction
    Created on : Jun 13, 2020, 1:55:41 AM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Prescription Action</title>
    </head>
    <body>
        <% 
        String rid = request.getParameter("Report_ID");
          String pid =request.getParameter("Patient_ID");
          String mname = request.getParameter("Medicine_Name");
          String dosage =request.getParameter("Dosage");
          String prev = request.getParameter("Preventions");
          String does =request.getParameter("Does");
            try
        {
            Connection con=Connect.getConnection();
         
            String query="insert into prescriptions(Report_ID,Patient_ID,Medicine_Name,Dosage,Preventions,Does)value(?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1,rid);
            pmt.setString(2,pid);
            pmt.setString(3,mname);
            pmt.setString(4,dosage);
            pmt.setString(5,prev);
            pmt.setString(6,does);
            pmt.executeUpdate();

            response.sendRedirect("userrequest.jsp");
         
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
             
           %>
    </body>
</html>
