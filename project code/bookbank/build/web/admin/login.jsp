
<%@ page import="java.sql.* " %>
<%
  String username=request.getParameter("user");
  String password=request.getParameter("pass"); 
  ResultSet rs=null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
             Statement st=conn.createStatement();
             
             String qry="select * from login";
             rs=st.executeQuery(qry);
             while(rs.next()){
             if(username.equals(rs.getString("username")) && password.equals(rs.getString("password"))){
    session.setAttribute("user",username);         
    String redirectURL = "javahome.jsp";
    response.sendRedirect(redirectURL);
    }
    else{

     String redirectURL = "javalogin.jsp";
    response.sendRedirect(redirectURL);


    }
    }
    }
    catch(Exception e){
    out.println(e);
    }

%>

