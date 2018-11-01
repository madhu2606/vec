<%-- 
    Document   : retrive
    Created on : 12 May, 2018, 12:03:54 PM
    Author     : Madhu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String vechileno = request.getParameter("vechileno");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "vechileinf";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
    background-image: url(image/c1.jpg);
      background-repeat: no-repeat;
            
    position: relative;        
         
    margin-left: auto;      
    margin-right: auto;  
    background-attachment: fixed;
    background-size: cover;
    background-position:center ;
    height:100%;
}
table{
     
    border-color: antiquewhite;
    text-transform:uppercase;
    width: 500px;
    height: 400px;
    font-family: sans-serif;
    font-size: 25px;
    font-weight: bold;
    color: black;
    margin-right: 600px;
  
}
h1{
    color: orangered;
    font-stretch: expanded;
    margin-right: 600px;
    
    font-size: 50px;
    
    
}
a{
    color: black;
    font-stretch: expanded;
    margin-right: 800px;
    
    font-size: 30px;
    
}
        </style>

        <title>vechileinfo</title>
        
    </head>
     <body> <center>
            <h1>Vechile Information</h1>
         <table>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM vechile where vechileno='"+vechileno+"'" ;
resultSet = statement.executeQuery(sql);
if(resultSet.next()){
    
%>
<tr>
    <th>Vehicle No</th>
    <td><%=resultSet.getString("vechileno") %></td>
</tr>
<tr>
    <th>Owner name</th>
    <td><%=resultSet.getString("ownername")%></td>

</tr>
<tr>
    <th>Address</th>
<td><%=resultSet.getString("address") %></td>
</tr>
<tr>
    <th>Chassis NO</th>
 <td><%=resultSet.getString("chassisno") %></td>

</tr>
<tr>
    <th>Color</th>
   
    <td><%=resultSet.getString("color") %></td>

</tr>
<tr>
    <th>Fuel Used</th>
<td><%=resultSet.getString("fuelused") %></td>

</tr>
<tr>
    <th>Reg Date</th>
<td><%=resultSet.getString("regdate") %></td>
</tr>


</table>
    
<%
}
else{
    out.println("Record Not Found");
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>
<a  href="index.html">Home</a>    
     </center></body>
</html>

