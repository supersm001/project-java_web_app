<%-- 
    Document   : updatereportaction
    Created on : Jun 13, 2020, 1:39:53 AM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connect.Connect,java.io.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Reports Action</title>
    </head>
    <body>
        <% 
        String rid = request.getParameter("Report_ID");
          String pid =request.getParameter("Patient_ID");
          String rname = request.getParameter("Report_Name");
          String rvalue =request.getParameter("Report_Value");
          String rmarks = request.getParameter("Report_Remarks");
          String doc =request.getParameter("Doc_Name");
            try
        {
            Connection con=Connect.getConnection();
         
            String query="insert into report(Report_ID,Patient_ID,Report_Name,Report_Value,Report_Remarks,Doc_Name)value(?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1,rid);
            pmt.setString(2,pid);
            pmt.setString(3,rname);
            pmt.setString(4,rvalue);
            pmt.setString(5,rmarks);
            pmt.setString(6,doc);
            pmt.executeUpdate();

            response.sendRedirect("userrequest.jsp");
         
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
           %>
    </body>
</html>
