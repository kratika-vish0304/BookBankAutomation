<%-- 
    Document   : javalogin
    Created on : Oct 6, 2022, 4:03:07 PM
    Author     : KRITIKA
--%>
<%@ page import="java.sql.* " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" 
         rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" 
         crossorigin="anonymous">
   <style>
       body{
           background-color: #0099ff;
       }
       .setting a{
           color: white;
           width:200px;
           margin-left: 60px;
           text-decoration: none;
       }
       .container{
           
           height:400px;
           margin: 60px 30px;
           margin-left: 30px;
           display: flex;
           flex-direction: row;
           
       }
       .cont2{
           width: 48%;
           
            height:500px;
            margin: 0px;
            background: url("../images/pic.jpg");   
            
       }
       .cont3{
            width: 48%;
            
            height:500px;
            margin: 0px;
            background-color: white ;   
            
       }
       .cont4{
           margin-top: 75px;
          
           width:85%;
           height:425px;
           background-color: rgb(74, 137, 231);
          
       }
       .center{
           margin: 25px 170px;
       }
       .center2{
        margin: 10px 120px;
        padding: 5px;
        border-radius: 3px;
       }
       .center3{
        margin: 30px 180px;
        padding: 10px;
        background-color: white;
        border-radius: 10px;
        border: 1px solid rgb(74, 137, 231);
        
       }
       #center3{
        color: rgb(74, 137, 231);
        font-size: 16px;
        font-style: italic;
        font-weight: bold;
        text-decoration: none;
       }
       .change{
           color: black;
           margin-left: 5px;
           text-decoration: none;
       }
       .change_div{
           
           margin-left: 150px;
           margin-right: 90px;
           background-color: white;
           border-radius:10px;
           padding: 5px;
           
       }
   </style>
    </head>
    <body>
        
        <div class="container">
        <div class="cont2">
            
        </div>
        <div class="cont3">
            <div class="cont4">
                <img src="../images/key (1).png" alt="alt" class="center"/><br>
                <form action="login.jsp" method="POST" > 
            <input type="text" name="user" id="username" placeholder="Username" class="center2"><br>
            <input type="password" name="pass" id="password" placeholder="password" class="center2">
            <button type="submit" class="center3">submit</button><br>
            <div class="change_div"><a href="change_pass.jsp" class="change">change password</a></div>
          
            
                </form>
            </div>
        </div>
    </div> 
      
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" 
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
    </body>
</html>
