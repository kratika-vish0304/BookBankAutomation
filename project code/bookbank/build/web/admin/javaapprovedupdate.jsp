
<%-- 
    Document   : javaapprovedupdate
    Created on : Oct 6, 2022, 6:54:00 PM
    Author     : KRITIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
  <title>approved update page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <style>
     .tttt{
         padding: 2px 0px;
         padding-left: 450px;
        
     }
     .spp{
         font-size: 26px;
         text-align: center;
         padding-left: 390px;
     }
     .form{
         margin: 10px;
     }
     @media(min-width:300px){
         
         .tttt{
            padding: 2px 0px;
         padding-left: 100px; 
         }
         .spp{
            text-align: left;
         padding-left: 100px; 
         }
         .form-text{
             text-align: left;
             visibility: hidden;
         }
         
     }
     @media(min-width:800px){
         
         .tttt{
            padding: 2px 0px;
         padding-left: 450px; 
         }
         .spp{
           
         font-size: 26px;
         text-align: center;
         padding-left: 390px;
         }
          .form{
         margin: 10px;
     }
        .form-text{
            visibility: visible;
             text-align: center;
             
         }
         
     }
     .container{
         display: flex;
         flex-direction: row;
     }
     .cont1{
         width: 33%;
     }
      .cont2{
          margin-left: 5px;
         width: 33%;
     }
      .cont3{
          margin-left: 5px;
         width: 33%;
     }
</style>
</head>

<body>
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark" height="100px">
<div class="container-fluid">
      <a class="navbar-brand">Library</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="javahome.html">Home</a>
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
  
    <%@page import="java.sql.*"%>
    <%
        
      ResultSet rs=null;
      String adms_no= request.getParameter("adms_no");
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
             Statement st=conn.createStatement();
             String qry="select * from approved where sno="+adms_no;
             rs=st.executeQuery(qry);
             int i=0;
             while(rs.next())
             {
              i=i+1;
              %>
              
              
             
          
    
    
  
  <section id="one">
      <img src="../images/st_aloy_logo.jpg" alt="" class="tttt"><br>
      <span class="spp text-center">Update Data</span><br>
     
      <!-- <form action=""> -->
        <form action="" method="post" class="form mx-5">
           <div class="container">
            <div class="cont1">

            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" value="<%=rs.getString("name") %>">
              
            </div>

            <div class="mb-3">
                <label for="admno" class="form-label">Addmission Number</label>
                <input type="number" class="form-control" id="admno" aria-describedby="emailHelp" name="admno" value="<%=rs.getString("add_no") %>">
            </div>

            <div class="mb-3">
                <label for="course" class="form-label">Course</label>
                <input type="text" class="form-control" id="course" aria-describedby="emailHelp" name="course" value="<%=rs.getString(4) %>">
            </div>
             <div class="mb-3">
                <label for="reciept_date" class="form-label">reciept-date</label>
                <input type="datetime-local" class="form-control" id="reciept_date" aria-describedby="emailHelp" name="reciept_date" value="<%=rs.getString(5) %>">
            </div>
             <div class="mb-3">
                <label for="mobile" class="form-label">Mobile</label>
                <input type="number" class="form-control" id="mobile" aria-describedby="emailHelp" name="mobile" value="<%=rs.getString(6) %>">
            </div>
           
             
            </div>
            
            
             <div class="cont2">
           
             <div class="mb-3">
                <label for="parent_mob" class="form-label">Parents Mob</label>
                <input type="number" class="form-control" id="parent_mob" aria-describedby="emailHelp" name="parent_mob" value="<%=rs.getString(7) %>">
            </div>
            
           
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" value="<%=rs.getString(8) %>">
            </div>
            <div class="mb-3">
                <label for="no_of_books" class="form-label">no_of_books</label>
                <input type="number" class="form-control" id="no_of_books" aria-describedby="emailHelp" name="no_of_books" value="<%=rs.getString(9) %>">
            </div>
            
             <div class="mb-3">
                <label for="bank" class="form-label">Bank name</label>
                <input type="text" class="form-control" id="bank" aria-describedby="emailHelp" name="bank" value="<%=rs.getString(10) %>">
            </div>
            <div class="mb-3">
                <label for="ifsc_code" class="form-label">IFSC code</label>
                <input type="varchar" class="form-control" pattern="^[A-Z]{4}0[A-Z0-9]{6}$" id="ifsc_code" aria-describedby="emailHelp" name="ifsc_code" value="<%=rs.getString(11) %>">
            </div>
             
             </div>
            
            <div class="cont3">
           
            
            <div class="mb-3">
                <label for="reciept" class="form-label">Reciept no</label>
                <input type="text" class="form-control" id="reciept" aria-describedby="emailHelp" name="reciept" value="<%=rs.getString(12) %>">
            </div>
            <div class="mb-3">
                <label for="amount" class="form-label">amount</label>
                <input type="number" class="form-control" id="amount" aria-describedby="emailHelp" name="amount" value="<%=rs.getString(13) %>">
            </div>
            <div class="mb-3">
                <label for="acc_no" class="form-label">Account Number</label>
                <input type="number" class="form-control" id="acc_no" aria-describedby="emailHelp" name="acc_no" value="<%=rs.getString(14) %>">
            </div>
            
              <div class="mb-3">
                <label for="bookname" class="form-label">Candidate Name according to Pass Book</label>
                <input type="text" class="form-control" id="bookname" aria-describedby="emailHelp" name="bookname" value="<%=rs.getString(15) %>">
            </div>
            </div>
           </div>

            
            
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
      </form>
     
      
      

  </section>
                <%
             
        }
   
    }
    catch(Exception e){
    out.println(e);
    }
        
        
        
       %>
       
       <%@ page import="java.sql.*" %>
<%
    
        String name=request.getParameter("name"); 
        String admno=request.getParameter("admno"); 
String course=request.getParameter("course"); 
String reciept_date=request.getParameter("reciept_date"); 
String no_of_books=request.getParameter("no_of_books"); 
String amount=request.getParameter("amount"); 
String email=request.getParameter("email"); 
String mobile=request.getParameter("mobile");
String parent_mob=request.getParameter("parent_mob");
String bank=request.getParameter("bank"); 
String ifsc_code=request.getParameter("ifsc_code"); 
String reciept=request.getParameter("reciept"); 
String acc_no=request.getParameter("acc_no");
String bookname=request.getParameter("bookname");
if( adms_no!= null){
    
          
    try
{
         PreparedStatement ps = null;
     Connection con = null;
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
      String sql="Update approved set name=?,add_no=?,course=?,reciept_date=?,email=?,mobile=?,parent_mob=?,no_of_books=?,bank=?,ifsccode=?,reciept=?,acc_no=?,amount=?,bookname=? where sno="+adms_no;
      ps = con.prepareStatement(sql);
        ps.setString(1,name);
        ps.setString(2,admno);
      ps.setString(3, course);
      ps.setString(4, reciept_date);
      ps.setString(5, email);
    ps.setString(6, mobile);
    ps.setString(7, parent_mob);
    ps.setString(8, no_of_books);
   ps.setString(9, bank);
 ps.setString(10,ifsc_code);
 ps.setString(11,reciept);
 ps.setString(12, acc_no);
 ps.setString(13, amount);
 ps.setString(14, bookname);
int i = ps.executeUpdate();
if(i > 0)
{
%>
 <div class='alert alert-success alert-dismissible fade show' role='alert'>
    <strong>updated</strong>
    <button type='button' class='btn-close' data-bs-dismiss='alert'aria-label='Close'></button>
  </div>

<%
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(Exception e)
{

//out.println(e);
}
}
    
%>
        
       
       
      
              
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
  integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
  integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
  crossorigin="anonymous"></script>
</body>
</html>
