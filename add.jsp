
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
    margin-right: 400px;
    
    font-size: 50px;
    
    
}
.submit{
             margin-right:500px;
             background-color: gold;
             font-size: 20px;
         
         }
         .submit:hover{
              color:black ;
    background: white;
         }
          input[type=text]{
              text-transform:uppercase;
             border-color: activeborder;
             background: transparent;
             width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
             
         }
        </style>
        <title>Add Vehicle</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body> <center>
        <h1>Add Vehicle Information</h1>
        <form method="post" action="addprocess.jsp">
            <table border="0">
<tr>
    <th>Vehicle No:</th>
    <td><input type="text" name="vechileno"></td>
</tr>
<tr>
    <th>Owner name:</th>
    <td><input type="text" name="ownername"></td>
</tr>
<tr>
    <th>Address:</th>
    <td><input type="text" name="address"></td>
</tr>
<tr>
    <th>Chassis NO:</th>
    <td><input type="text" name="chassisno"></td>
</tr>
<tr>
    <th>Color:</th>
   
    <td><input type="text" name="color"></td>
</tr>
<tr>
    <th>Fuel Used:</th>
    <td><input type="text" name="fuelused"></td>
</tr>
<tr>
    <th>Reg Date:</th>
    <td><input type="text" name="regdate"></td>
</tr>


            </table>
            <br>
            <input class="submit" type="submit" value="submit">
</form>

    </center></body>
</html>
