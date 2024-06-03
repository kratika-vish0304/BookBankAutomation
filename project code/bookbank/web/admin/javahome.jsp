<%-- 
    Document   : javahome
    Created on : Oct 6, 2022, 4:04:38 PM
    Author     : KRITIKA
--%>
<%@ page import="java.sql.* " %>
<% session.getAttribute("user"); %>
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
    body {
      overflow-y: hidden;
      overflow-x: hidden;
    }

    .text {

      margin-top: -450px;
    }

    .t {
      font-family: Outfit;
      font-style: normal;
      font-weight: 400;
      font-size: 30px;
      line-height: 36px;
      letter-spacing: -0.02em;
      max-width: 800px;
      margin: 10px 0;
      color: black;


    }

    .t1,
    .t2 {
      display: block;

    }

    .t1 {
      text-align: center;

      padding: 10px 8px;
      margin: auto;
      font-size: 52px;
      font-style: italic;
      font-weight: bold;
      color: black;


    }
    



    
  </style>
</head>

<body>
   <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
    <div class="container-fluid">
      <a class="navbar-brand">Library</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="javahome.jsp">Home</a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link active" href="javarequests.jsp">Requests</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link active" href="javaapproved.jsp">Approved</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link active" href=<%session.invalidate(); %>"javalogin.jsp">Logout</a>
          </li>
          
        </ul>

      </div>
    </div>
  </nav>

  <section id="one">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">

      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../images/plant.jpg" class="d-block w-100" alt="..." height="670px" style="opacity: 0.6;">
        </div>
        <div class="carousel-item">
          <img src="../images/books.jpg" class="d-block w-100" alt="..." height="670px" style="opacity: 0.7;">
        </div>
        <div class="carousel-item">
          <img src="../images/grass.jpg" class="d-block w-100" alt="..." height="670px" style="opacity: 0.7;">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
      <div class="text">
        <h3 class="text1">
            <span style="color:black;" class="t t1">Library Management System</span><br><br>
            <p id="spanpara" style="color:black;" > <ul><li class="center">Library is a place where books are kept according to the different subject matters.</li>
                <li class="center">Library is a place where unlimited knowledge is just waiting to be found.</li></ul></p>


        </h3>
      </div>
    </div>
    </div>
    </div>
  </section>
  



  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
    crossorigin="anonymous"></script>
</body>

</html>
