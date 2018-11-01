

<%@page contentType="text/html" pageEncoding="UTF-8"%>
       <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
      background-image: url(image/a.jpg);
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
                color:greenyellow;
    font-stretch: expanded;
    font-size: 50px;
            }
          .submit{
      font-size: 30px;
    background:transparent;
    color:black ;
    margin-top: 50px;
    margin-right: 500px;
    
            }
           .submit:hover{
             
    background: white;
           }
           a{
    color: aquamarine;
    font-stretch: expanded;
    margin-right: 800px;
    
    font-size: 30px;
    
}
    
        </style>
                  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
    </head>
    <body><center>
 
<%
String username=request.getParameter("name");

String pswd=request.getParameter("pswd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection
("jdbc:mysql://localhost:3306/vechileinf","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where username='"+username+"' ");

if(rs.next()){
   if(pswd.equals(rs.getString(2)))
    { 
        out.println("<h1>");
         out.println("Welcome");
        
    out.println(""+username);
out.println("</h1>");%>
    <br>
    <br>
    <form action="add.jsp">
        <input  class="submit" type="submit" value="Add Vechile" >
    </form>
    <br>
    <br>
    <form action="del.jsp">
        <input class="submit" type="submit" value="Delete Vechile" >
    </form>
    <br>    
<%
    
    }
else{
       out.println("<h1>");
  out.println("Invalid password try again");
  out.println("</h1>");
 %> 
 <br>
 <a  href="admin.html">Login page</a> 
<%
   }
    }
else{
    out.println("<h1>");
         out.println("Invalid username try again");
         out.println("</h1>");
 %> 
 <br>
 <a  href="admin.html">Login page</a> 
<%
}

%>
    </center></body>
</html>
