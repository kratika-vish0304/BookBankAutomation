<%-- 
    Document   : javaregistrationpage
    Created on : Sep 30, 2022, 5:12:25 AM
    Author     : KRITIKA
--%>
<%@ page import="java.sql.*" %>
<% 
String name=request.getParameter("name");
String admno=request.getParameter("adms_no");
String course=request.getParameter("course");
String reciept_date=request.getParameter("reciept_date");
String mobile=request.getParameter("mobile");
String parent_mob=request.getParameter("parent_mob");
String email=request.getParameter("email");
String no_of_books=request.getParameter("no_of_books");
String bank=request.getParameter("bank");
String ifsccode=request.getParameter("ifsc_code");
String reciept=request.getParameter("reciept");
String amount=request.getParameter("amount");
String accno=request.getParameter("acc_no");
String bookname=request.getParameter("bookname");


try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
   PreparedStatement ps=conn.prepareStatement("insert into registration(name,add_no,course,reciept_date,mobile,parent_mob,email,no_of_books,bank,ifsccode,reciept,amount,acc_no,bookname) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
   ps.setString(1, name);
   ps.setString(2, admno);
   ps.setString(3,course );
   ps.setString(4,reciept_date );
   ps.setString(5, mobile);
   ps.setString(6, parent_mob);
   ps.setString(7, email);
   ps.setString(8,no_of_books );
   ps.setString(9, bank);
   ps.setString(10, ifsccode);
   ps.setString(11, reciept);
   ps.setString(12,amount );
   ps.setString(13, accno);
   ps.setString(14, bookname);
   int x=ps.executeUpdate();
      String num=request.getParameter("reciept");
   if(x>0){
     String redirectURL = "reg_result.jsp?adms_no="+num;
    response.sendRedirect(redirectURL);
        %>
<!--        <div class='alert alert-success alert-dismissible fade show' role='alert'>
    <strong>inserted successfully</strong>
    <button type='button' class='btn-close' data-bs-dismiss='alert'aria-label='Close'></button>
  </div>-->
        <%
   }
   else{
       out.println("error occur");
    }
    }
catch(Exception e){
//    out.println(e);
    }    
%>
     
   

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>registration page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <style>
      

     .spp{
         font-size: 32px;

     }
     .label{
         font-size: 16px;
     }
     .form{
         margin: 10px;
         margin-top: 40px;
        
     }
     @media(min-width:300px){
         
         .div1{
             display:flex;
             flex-direction: column;
            
         }
          .div1_1{
/*            margin: 5px;*/
            margin-bottom: 0px;
        }
        .div1_2{
/*             margin: 5px;*/
            margin-left: 0px;
            margin-bottom: 0px;
        }
         .div1_3{
/*             margin: 5px;*/
            margin-left: 0px;
            margin-bottom: 0px;
        }
        .div1_4{
/*             margin: 5px;*/
            margin-left: 0px;
            margin-bottom: 0px;
        }
         
         .spp{
            padding-bottom: 0px; 
            
         }
         .form-text{
             text-align: center;
             visibility: hidden;
         }
         .label{
         
         color: white;
          font-size: 8px;
     }
     

         
     }
    

     @media(min-width:800px){
         
         .label{
         width: 150%;
         color: white;
          font-size: 20px;
     }
      .form-control{
         width: 150%;
     }
        .form-text{
            visibility: visible;
             text-align: center;
             
         }
         .div1{
             display:flex;
             flex-direction: row;
            
         }
          label{
            margin: 0px;
        }
        .div1_1{
/*            margin: 5px;*/
            margin-bottom: 0px;
        }
        .div1_2{
/*             margin: 5px;*/
            margin-left: 130px;
            margin-bottom: 0px;
        }
         .div1_3{
/*             margin: 5px;*/
            margin-left: 120px;
            margin-bottom: 0px;
        }
        .div1_4{
/*             margin: 5px;*/
            margin-left: 120px;
            margin-bottom: 0px;
        }
         
         
        }
       
</style>
<script>
    function disableSubmit() {
  document.getElementById("submit").disabled = true;
 }

  function activateButton(element) {

      if(element.checked) {
        document.getElementById("submit").disabled = false;
       }
       else  {
        document.getElementById("submit").disabled = true;
      }

  }
</script>
</head>

<body onload="disableSubmit()">
 
    
  <section id="one">
    <center> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="logo_college.png" width="800" height="140">    
    <h4> Online Application Form</h4>
    <h5>Liabrary Book Issue | Liabrary Book Bank  </h5>

</center>
     
      <div id="emailHelp" class="form-text" style="color:rgb(35, 35, 125); font-size:18px ;">We'll never share your details with anyone else.</div>
      <!-- <form action=""> -->
        <form action="" method="post" class="form mx-5">
            <div class="div1 mb-3">
                <div class="div1_1">
                    <label for="name" class="form-label" ><font color="red">* </font>Name</label><br>
              <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" required>
                </div>
                
                <div class="div1_2">
              <label for="adms_no" class="form-label" style="font-size:20px ;"><font color="red">* </font>Addmission Number</label><br>
              <input type="varchar" class=" form-control" id="adms_no" pattern="^[0-9]{5}$" aria-describedby="emailHelp"   name="adms_no" required>
                </div>
                
                <div class="div1_3">
                  <label for="course" class="form-label" style="font-size:20px ;"><font color="red">* </font>Course</label>
                  <select class=" form-control" id="course" aria-describedby="emailHelp" name="course" required >
                    <option value="#">---Select Course---</option>
                    <option value="bca">BCA</option>
                    <option value="bsc">BSC</option>
                    <option value="ba">BA</option>
                    <option value="bcom">BCOM</option>
                    <option value="bba">BBA</option>
                    <option value="ma">MA</option>
                    <option value="mcom">MCOM</option>
                    <option value="msc">MSC</option>
                </select>
 
                </div>

                <div class="div1_4">
                      <label for="email" class="form-label" style="font-size:20px ;"><font color="red">* </font>Email</label>
                      <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" required>
                  
                </div>
              
            </div>
            
            <div class="div1 mb-3">
               
                <div class="div1_1">
                   <label for="mobile" class="form-label" style="font-size:20px ;"><font color="red">* </font>Mobile</label>
                   <input type="tel" class="form-control" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" id="mobile" aria-describedby="emailHelp"   name="mobile" required>
                </div>
                <div class="div1_2">
                <label for="parent_mob" class="form-label" style="font-size:20px ;"><font color="red">* </font>Parent's Mobile</label>
                <input type="tel" class="form-control" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" id="parent_mob" aria-describedby="emailHelp"   name="parent_mob" required>
               </div>
                <div class="div1_3">
                    
               <label for="no_of_books" class="form-label" style="font-size:20px ;"><font color="red">* </font>No of books issued</label>
                <input type="number" class=" form-control" id="no_of_books" max="3" aria-describedby="emailHelp"   name="no_of_books" required>
               </div>
                
               <div class="div1_4">
                    <label for="amount" class="form-label" style="font-size:20px ;"><font color="red">* </font>Amount paid</label>
                <input type="number" class=" form-control" id="amount" aria-describedby="emailHelp" name="amount" required>
               
              </div>
            </div>
            
            
            <div class="div1 mb-3">
            <div class="div1_1">
                <label for="reciept" class="form-label" style="font-size:20px ;"><font color="red">* </font>Reciept No</label>
                <input type="number" class="form-control" id="reciept" aria-describedby="emailHelp" name="reciept" required>
                
            </div>
           
            <div class="div1_2">
                  <label for="reciept_date" class="form-label" style="font-size:20px ;"><font color="red">* </font>Date of Reciept</label>
               <input type="datetime-local" class=" form-control" id="reciept_date" aria-describedby="emailHelp" name="reciept_date" required>
               
            </div>
              <div class="div1_3">
                <label for="bank" class="form-label" style="font-size:20px ;"><font color="red">* </font>Name of the Bank</label>
                <input type="text" class="form-control" id="bank" aria-describedby="emailHelp" name="bank" required>
               </div> 
               <div class="div1_4">
              <label for="ifsc_code" class="form-label" style="font-size:20px ;"><font color="red">* </font>IFSC code</label>
                <input type="varchar" class="form-control" pattern="^[A-Z]{4}0[A-Z0-9]{6}$" id="ifsc_code" aria-describedby="emailHelp" name="ifsc_code" required>
              </div>  
            </div>
            
             <div class="div1 mb-3">
                 <div class="div1_1">
                    <label for="acc_no" class="form-label" style="font-size:20px ;"><font color="red">* </font>Account Number</label>
                     <input type="number" class="form-control" id="acc_no"   aria-describedby="emailHelp"  name="acc_no" required>
                 </div>
                  <div class="div1_2">
                <label for="bookname" class="form-label" style="font-size:20px ;"><font color="red">* </font>Name as passbook</label>
                <input type="bookname" class="form-control" id="bookname" aria-describedby="emailHelp" name="bookname"required>
               </div>
                 
             </div>
            <input type="checkbox" name="terms" id="terms" onchange="activateButton(this)" >I hereby declare that all the above information provided by me is true and correct. 
   <br>
            
            
            <button type="submit" class="btn btn-primary" name="submit" id="submit" >Submit</button>
           
          </form>
      </form>
      
   
      

  </section>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
  integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
  integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
  crossorigin="anonymous"></script>
</body>

</html>