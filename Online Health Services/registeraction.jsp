<%-- 
    Document   : registeraction
    Created on : 10 Mar, 2020, 6:29:42 AM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,connect.Connect" %>
<!DOCTYPE html>
<Html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>action</title>
    </head>
    <body>
        <%
          String name = request.getParameter("name");
          String gender = request.getParameter("gender");
        
          String age = request.getParameter("age");
          String address = request.getParameter("address");
          
          String phone = request.getParameter("phone");
          String username = request.getParameter("username");
          
          String password = request.getParameter("password");
            
                    
          try
        {
            Connection con=Connect.getConnection();
            String query="insert into patient(Patient_Name,Gender,Age,Patient_Addr,Phone,User_Name,Password)value(?,?,?,?,?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1,name);
            pstmt.setString(2,gender);
            pstmt.setString(3,age);
            pstmt.setString(4,address);
            pstmt.setString(5,phone);
            pstmt.setString(6,username);
            pstmt.setString(7,password);
            
            pstmt.executeUpdate();
            response.sendRedirect("login.jsp");
            
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
           
        %>
    </body>
</Html>
                                                                                                              