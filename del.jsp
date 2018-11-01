<%-- 
    Document   : del
    Created on : 15 May, 2018, 12:34:26 PM
    Author     : Madhu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
h3{
    margin-top: 150px;
    color: black;
     font-stretch: expanded;
    margin-right: 700px;
    
    font-size: 30px;
    
    
}
.submit{
             margin-right:700px;
             background-color: whitesmoke;
             font-size: 20px;
         
         }
         .submit:hover{
              color:black ;
    background:gold;
         }
          input[type=text]{
              text-transform:uppercase;
             border-color: activeborder;
             background: transparent;
           
    
    box-sizing: border-box;
    margin-left: -700px;
             
         }
        </style>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Vehicle</title>
    </head>
    <body><center>
        <h1>Delete Vehicle</h1>
    <form action="delprocess.jsp">
        <h3>Enter Vehicle.No to Delete</h3>
        
        <br>
        <input type="text" name="vechileno">
        <br><br>
        <input class="submit" type="submit" value="submit">
    </form>
        
    </center> </body>
</html>
