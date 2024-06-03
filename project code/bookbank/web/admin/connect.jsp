<%@ page import="java.sql.*" %>
<% 
String name=request.getParameter("name");
String admno=request.getParameter("adms_no");
String course=request.getParameter("course");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String bank=request.getParameter("bank");
String ifsccode=request.getParameter("ifsc_code");
String accno=request.getParameter("acc_no");


try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
   PreparedStatement ps=conn.prepareStatement("insert into registration(name,add_no,course,mobile,email,bank,ifsccode,acc_no) values(?,?,?,?,?,?,?,?);");
   ps.setString(1, name);
   ps.setString(2, admno);
   ps.setString(3,course );
   ps.setString(4, mobile);
   ps.setString(5, email);
   ps.setString(6, bank);
   ps.setString(7, ifsccode);
   ps.setString(8, accno);
   int x=ps.executeUpdate();
   if(x>0){
        out.println("inserted succesfully");
   }
   else{
       out.println("error occur");
    }
    }
catch(Exception e){
    out.println(e);
    }    
%>