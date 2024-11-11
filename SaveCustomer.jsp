<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head>
        <title>Create New Customer</title>
<%
    
    String name = request.getParameter("txtName");
    String address = request.getParameter("txtAddress");
    String city = request.getParameter("txtCity"));
    String state = request.getParameter("txtState");
    String zipCode = request.getParameter("txtZipCode");
    String phone = request.getParameter("txtPhone");
    String email = request.getParameter("txtEmail");                                    

    //the message to send back
    String message = "";

    //database information
    String dbservername = "localhost";
    String dbname = "test";
    String username = "root";
    String password = "";
    String url = "jdbc:mysql://" + dbservername + "/" + dbname + "?user=" + username + "&password=" + password;

    try {
        
        //create instance of the MySQL driver
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        
        //create database connection
        Connection conn = DriverManager.getConnection(url);
        
        //construct the query
        StringBuffer buffer = new StringBuffer();
        buffer.append("insert into customers(Name,Address,City,State,Zip,Phone,Email) values ('");
        buffer.append(name);
        buffer.append(address);
        buffer.append(city);
        buffer.append(state);
        buffer.append(zipCode);
        buffer.append(phone);
        buffer.append(email);
        String sql = buffer.toString();
            
        //execute it
        Statement stmt = conn.createStatement();
        if (stmt.executeUpdate(sql) > 0) {
            message = "Added customer";
        } else {
            message = "Error occurred while trying to connect to database.";
        }
        
    } catch (Exception ex){
        message = "Error occurred while trying to connect to database: " + ex.getMessage();
    }        

%>      
        <script type="text/javascript">
            window.onload = function () {
                top.frames["displayFrame"].saveResult("<%= message %>");        
            }
       
        </script>     
    </head>
    <body>
        
    </body>
</html>
