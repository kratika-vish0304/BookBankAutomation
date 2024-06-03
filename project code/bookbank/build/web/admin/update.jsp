 <%@ page import="java.sql.*" %>
<%
    boolean update=false;
    String adms_no = request.getParameter("adms_no");
        String name=request.getParameter("name"); 
//        String admno=request.getParameter("adms_no"); 
String course=request.getParameter("course"); 
String mobile=request.getParameter("mobile");
String parent_mob=request.getParameter("parent_mob"); 
String email=request.getParameter("email"); 
String bank=request.getParameter("bank"); 
String ifsc_code=request.getParameter("ifsc_code"); 
String acc_no=request.getParameter("acc_no");
String bookname=request.getParameter("bookname"); 
if( adms_no!= null){
    
           
    try
{
         PreparedStatement ps = null;
     Connection con = null;
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
      String sql="Update registration set name=?,add_no=?,course=?,mobile=?,parent_mob=?,email=?,bank=?,ifsccode=?,acc_no=?,bookname=? where sno="+adms_no;
      ps = con.prepareStatement(sql);
        ps.setString(1,name);
        ps.setString(2,adms_no);
      ps.setString(3, course);
     ps.setString(4, mobile);
     ps.setString(5, parent_mob);
    ps.setString(6, email);
   ps.setString(7, bank);
 ps.setString(8,ifsc_code);
 ps.setString(9, acc_no);
 ps.setString(10, bookname);
int i = ps.executeUpdate();
if(i > 0)
{
%>
<h1>updated</h1>
<%
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(Exception e)
{

out.println(e);
}
}
    
%>
          