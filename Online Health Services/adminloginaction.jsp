<%-- 
    Document   : adminloginaction
    Created on : Jun 12, 2020, 6:27:25 PM
    Author     : Sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,connect.Connect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin login action</title>
    </head>
    <body>
        <%
       
          String username = request.getParameter("username");
          
          String password = request.getParameter("password");
            
                    
          try
        {
            Connection con=Connect.getConnection();
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from admin where User_Name='" + username + "' and Password='" + password + "'");
            if (rs.next()) 
            {
            session.setAttribute("username", username);
            response.sendRedirect("userrequest.jsp");
            
            } 
            else 
            {

            request.setAttribute("errorMessage", "Invalid username or password");
            response.sendRedirect("adminlogin.jsp");
                

            }
           
            
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
             
     %>   
    </body>
</html>

