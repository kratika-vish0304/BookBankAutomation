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
    
     
    
       @media(min-width:300px){}
       @media(min-width:800px){
           .container{
          margin-bottom: 17px;
          display: flex;
          flex-direction: row;
          
          
      }
           
      .cont2{
         margin-left: 25px;
      
         
      }
      .cont1{
         margin-left: 100px;

         width: 50%;
      }
      .cont{
         margin-top: 30px;
         margin-bottom:  20px;
      }
      
       }
       </style>
</head>

<body>
     <center> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="logo_college.png" width="800" height="140">    
    <h4> Online Application Form Details</h4>
    <h5>Liabrary Book Issue | Liabrary Book Bank  </h5>

</center>
             <section id="one">

                <%@page import="java.sql.*"%>
    <%
//        Connection conn=null;
//        Statement st=null;
        ResultSet rs=null;
        String adms_no= request.getParameter("adms_no");
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
             Statement st=conn.createStatement();
             
             String qry="select * from registration where reciept="+adms_no;
             rs=st.executeQuery(qry);
             int i=0;
             while(rs.next())
             {
              i=i+1;
              %>

               <div class="container">
                   <div class="cont1">
                       <div class="cont"><h4>Name:<span> <%= rs.getString(2)%></span></h4></div>
                   <div class="cont"><h4>Addmission no:<span> <%= rs.getString(3)%></span></h4></div>
                   <div class="cont"><h4>Course:<span> <%= rs.getString(4)%></span></h4></div>
                   <div class="cont"><h4>Mobile:<span><%= rs.getString(6)%></span></h4></div>
                   <div class="cont"><h4>Parents Mob:<span><%= rs.getString(7)%></span></h4></div>
                   <div class="cont"><h4>Email:<span> <%= rs.getString(8)%></span></h4></div>
                   <div class="cont"><h4>No of books issued<span> <%= rs.getString(9)%></span></h4></div>
                   </div>
                   <div class="cont2">
                   
                   <div class="cont"><h4>Reciept No:<span> <%= rs.getString(12)%></span></h4></div>
                   <div class="cont"><h4>Reciept date:<span> <%= rs.getString(5)%></span></h4></div>
                   <div class="cont"><h4>Amount Paid:<span> <%= rs.getString(13)%></span></h4></div>
                   <div class="cont"><h4>Bank Name:<span> <%= rs.getString(10)%></span></h4></div>
                   <div class="cont"><h4>Account No:<span> <%= rs.getString(14)%></span></h4></div>
                   <div class="cont"><h4>IFSC Code:<span> <%= rs.getString(11)%></span></h4></div>
                   <div class="cont"><h4>Candidate Name according to passbook:<span> <%= rs.getString(15)%></span></h4></div>
                   </div>
                  
               </div>
              
                   
               <%
             
        }
   
    }
    catch(Exception e){
    out.println(e);
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
