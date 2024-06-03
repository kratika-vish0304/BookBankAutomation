
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
  <title>requests page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <style>
   
    
    
 
</style>
</head>

<body>
   
  
    
    
    
   
  <section id="one">
    
    
        
     <table class="table borderr  table-bordered mt-2 " >
        <thead class="borderr thead coll" border="1">
            <tr class="borderr " border="1">
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
              <th scope="col" class="col borderr">bookname</th>
              
             
              
              
            </tr>
          </thead>
          <tbody class="borderr trow col_td ">
               <%@page import="java.sql.*"%>
    <%
//        Connection conn=null;
//        Statement st=null;
        ResultSet rs=null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
             Statement st=conn.createStatement();
             
             
             String qry="select * from registration";
             rs=st.executeQuery(qry);
             response.setContentType("application/vnd.ms-excel");
             response.setHeader("Content-Disposition", "inline; filename=book_request.xls");
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

