<%-- 
    Document   : javaview
    Created on : Oct 6, 2022, 4:06:03 PM
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
    .borderr{
        border: 1px solid teal;
    }
    .coll{
        background-color: rgb(107, 163, 144);
        font-style: italic;
        color: white;
    }
    .trow{
        background-color: rgb(211, 207, 207);
    }
    .col_td:hover{
        color: teal;
    }
    
      tbody{
      font-size: 14px;
    }
    .edit{
      font-size: 12px;
      
    }
    #search{
        color: blanchedalmond;
          margin-left: 0;
       margin-right: auto;
         padding: 5px;
    }
    .btn{
      font-size: 12px;
      padding: 1px;
      margin: 2px;
      background-color: teal;;
    }
     #update{
        background-color: rgb(14, 132, 130);
        color: white;
        padding: 3px;
        border-radius: 5px;
        border: 1px solid black;
        text-decoration: none;
    }
    #delete{
        background-color: rgb(14, 132, 130);
        color: white;
        padding: 3px;
        border-radius: 5px;
        text-decoration: none;
        border: 1px solid black;
    }
     .search{
        width: 80%;
        margin-right:auto ;
        margin-left: auto;
    }
</style>
</head>

<body>
     <nav class="navbar navbar-expand-lg bg-dark navbar-dark" style="width:1602px;">
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
           <li class="nav-item ">
            <a class="nav-link active" href=<%session.invalidate(); %>"javalogin.jsp">Logout</a>
          </li>
        </ul>
       
      </div>
    </div>
  </nav>
    
    
    
   
  <section id="one">
     <h1 class="text-center mx-3">Approved Requests</h1>
     <form class="d-flex" method="get" action="searchapproved.jsp">
          <input class="form-control me-2 search" type="search" placeholder="Enter admission number" name="search" >
          <button class="btn btn-outline-success" type="submit" id="search">Search</button>
        </form>
     <table class="table borderr  table-striped mt-2">
        <thead class="borderr thead coll">
            <tr class="borderr ">
               <th scope="col" class="col borderr">Sno</th>
              <th scope="col" class="col borderr ">Name</th>
              <th scope="col" class="col borderr">ADDm_no</th>
              <th scope="col" class="col borderr">Course</th>
              <th scope="col" class="col borderr">Reciept_date</th>
              <th scope="col" class="col borderr">Mobile</th>
              <th scope="col" class="col borderr">Parent_mob</th>
              <th scope="col" class="col borderr">Email</th>
              <th scope="col" class="col borderr">Books</th>
              <th scope="col" class="col borderr">Bank</th>
              <th scope="col" class="col borderr ">IFSC_Code</th>
              <th scope="col" class="col borderr ">Reciept No</th>
              <th scope="col" class="col borderr">Amount</th>
              <th scope="col" class="col borderr">Account Number</th>
              <th scope="col" class="col borderr">passbook name</th>
              
             <th scope="col" class="col borderr">update</th>
              <th scope="col" class="col borderr">delete</th>
              
              
            </tr>
          </thead>
          <tbody class="borderr trow col_td ">
<%@ page import="java.sql.*" %>
<%
    String search=request.getParameter("search");
try{

Connection conn=null;
String url="jdbc:mysql://localhost/java";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,"root","");

PreparedStatement st=conn.prepareStatement("select * from approved where add_no=?");
st.setString(1, search);
ResultSet rs=st.executeQuery();

             int i=0;
             while(rs.next())
             {
              i=i+1;
    
    %>
       <tr class="cold_td">
                   <th scope="row col_td"><%=i%></th>
             <td class="col_td borderr"><%= rs.getString(2)%></td>
              <td class="col_td borderr"><%= rs.getString(3)%></td>
              <td class="col_td borderr"><%= rs.getString(4)%></td>
              <td class="col_td borderr"><%= rs.getString(5)%></td>
              <td class="col_td borderr"><%= rs.getString(6)%></td>
              <td class="col_td borderr"><%= rs.getString(7)%></td>
              <td class="col_td borderr"><%= rs.getString(8)%></td>
              <td class="col_td borderr"><%= rs.getString(9)%></td>
              <td class="col_td borderr"><%= rs.getString(10)%></td>
              <td class="col_td borderr"><%= rs.getString(11)%></td>
              <td class="col_td borderr"><%= rs.getString(12)%></td>
              <td class="col_td borderr"><%= rs.getString(13)%></td>
              <td class="col_td borderr"><%= rs.getString(14)%></td>
              <td class="col_td borderr"><%= rs.getString(15)%></td>
              <td class="col_td borderr"><a href="javaupdate.jsp?adms_no=<%=rs.getString("sno")%>" id="update" >Update</a></td>
                  <td class="col_td borderr"><a href="javadelete.jsp?adms_no=<%=rs.getString("sno")%>"  id="delete">Delete</a></td>
              
            </tr>
              
              
               <%
             
        }
   
    }
    catch(Exception e){
    out.println(e);
    }
        
        
        
       %>
           
           
          </tbody>
      </table>

  </section>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
  integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
  integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
  crossorigin="anonymous"></script>
</body>
</html>

