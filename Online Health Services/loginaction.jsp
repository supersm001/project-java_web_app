<%-- 
    Document   : loginaction
    Created on : 18 Apr, 2020, 12:22:52 AM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,connect.Connect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user login</title>
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
            rs = st.executeQuery("select * from patient where User_Name='" + username + "' and Password='" + password + "'");
            if (rs.next()) 
            {
            session.setAttribute("username", username);
            response.sendRedirect("apntser.jsp");
            
            } 
            else 
            {

            request.setAttribute("errorMessage", "Invalid username or password");
            response.sendRedirect("login.jsp");
                

            }
           
            
        }catch(Exception e)
        {
            out.print("Exception:"+e);
        }
               
     %>   
    </body>
</html>
