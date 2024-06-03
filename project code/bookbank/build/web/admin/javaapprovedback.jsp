<%-- 
    Document   : javadelete
    Created on : Oct 6, 2022, 11:06:22 PM
    Author     : KRITIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>home page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
        .cont2 {
            background-color: gray;
            height: 400px;
            margin: auto;
            margin-top: 50px;
            padding-top: 50px;
            width: 600px;
        }

        .cont3 {


            height: 300px;
            width: 50%;
            display: block;
            margin-left: auto;
            margin-right: auto;




        }

        .cont5 {
            margin: auto;
        }

        .cont4 {
            margin: auto;
            text-align: center;
            font-size: 40px;
        }
    </style>
</head>

<body>

    <div class="cont2">
        <div class="cont5">
            <img src="../images/approved.png" alt="" class="cont3 center">
        </div>
    </div>
    <%@ page import="java.sql.*" %>
<%
    String adms_no = request.getParameter("adms_no");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
    Statement stmnt=conn.createStatement();
    String sql="delete from registration where sno="+adms_no;
    stmnt.execute(sql);
     %>
   <div class="cont4">
        REQUEST APPROVED
    </div>
   <%
    }
    catch(Exception e){
%>
     <div class="cont4">
        REQUEST APPROVED
    </div>
     <%
    }
   
%>
    

</body>

</html>
