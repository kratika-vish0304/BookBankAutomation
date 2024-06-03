<%-- 
    Document   : javadelete
    Created on : Oct 6, 2022, 11:06:22 PM
    Author     : KRITIKA
--%>


<%@ page import="java.sql.*" %>
<%
    String adms_no = request.getParameter("adms_no");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
    Statement stmnt=conn.createStatement();
    String sql="delete from approved where sno="+adms_no;
    stmnt.execute(sql);
    out.println("Deletion done");
    }
    catch(Exception e){
    out.println(e);
    }
    %>
