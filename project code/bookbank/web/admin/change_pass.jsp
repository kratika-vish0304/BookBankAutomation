<%-- 
    Document   : change_pass
    Created on : Oct 7, 2022, 8:00:18 AM
    Author     : KRITIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change_password</title>
        <style>
            body{
                overflow-x: hidden;
                background-image: url('../images/back3.jpg')  ;
                height:500px ;
                
                    
            }
            .cont{
               margin-left: 190px;
                width:600px;
                
                height:500px;
            }
            .h2{
                text-align: center;
                margin-top: 90px;
                color: blanchedalmond;
            }
            .username{
                margin-left: 210px;
                margin-top: 50px;
                
            }
            .old_pass{
                margin-left: 210px;
                 margin-top: 10px;
                 
            }
            .new_pass{
                margin-left: 210px;
                 margin-top: 10px;
                 
            }
            .center3{
                margin-left: 270px; 
                 margin-top: 20px;
                 padding: 5px;
            }
            #username,#password,#new_password{
                padding: 10px;
                border-radius:5px;
            }
            
        </style>
    </head>
    <body>
        <div class="cont">
            <h1 class="h2 text-center ">Change Password</h1>
        <form action="change_pass2.jsp" method="POST" > 
            <div class="username"><input type="text" name="user" id="username" placeholder="Username" class="center2"></div><br>
            <div class="old_pass"><input type="password" name="pass" id="password" placeholder="Current Password" class="center2"></div><br>
            <div class="new_pass"><input type="password" name="new" id="new_password" placeholder="New Password" class="center2"></div>
            <button type="submit" class="center3">submit</button><br>
           
                </form>
        </div>
       
    </body>
</html>
