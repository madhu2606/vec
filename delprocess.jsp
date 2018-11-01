
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
    <style>
         body{
   
 
  background-image: url(image/new2.jpg);
      background-repeat: no-repeat;
            
    position: relative;        
         
    margin-left: auto;      
    margin-right: auto;  
    background-attachment: fixed;
    background-size: cover;
    background-position:center ;
    height:100%;
    font-family: comic sans ms;
    color: white;
    
    
    
}
h1{
    color: yellow;
    font-stretch: expanded;
    font-size: 50px;
    
    
}
    </style>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta http-equiv="refresh" content="3;url=index.html" >
<title>Delete Vehicle</title>
<body><center>
       <%
// get parameters from the request
String vechileno = request.getParameter("vechileno");
//tring LibraryAddr= request.getParameter("LibraryAddr");
//String FacultyId= request.getParameter("FacultyId");
//String Password= request.getParameter("Password");
// declare a connection by using Connection interface
try {
    String connectionURL = "jdbc:mysql://localhost:3306/vechileinf";
    Class.forName("com.mysql.jdbc.Driver").newInstance ();
     Connection con = DriverManager.getConnection(connectionURL, "root", "root");
   out.println("<h1>");
     out.println("Connection Opened to database.");
    out.println("</h1>");
     Statement stat=con.createStatement();

    //String InsertQuery="Select * from tbllibrarian";
    //System.out.println("shgfsxv");
    //String InsertQuery="insert into tbllibrarian(LibraryId,LibraryName,LibraryPhno,LibraryEmail,LibraryAddr,Password) values(11,'weryty',1234,'asdfr@gmail.com','Baramati','****');";
   //System.out.println("megha");
   

 String DelQuery="delete FROM vechile WHERE vechileno='"+vechileno+"'";
 
    try
    {
        stat.executeUpdate(DelQuery);
        out.println("<br>");
            out.println("<h1>");
        out.println("Record Deleted from database successfully.");
            out.println("</h1>");
       
   // String redirectURL = "adminlogin.jsp";
    //response.sendRedirect(redirectURL);

    }
    catch(SQLException e)
    {
            out.println("<h1>");
        out.println("Unable to Delete Record from database.");
            out.println("</h1>");
    }



}
catch(SQLException ex)
{
        out.println("<h1>");
    out.println("Unable to connect to database.");
        out.println("</h1>");
}
%>

    </center></body>
</html>