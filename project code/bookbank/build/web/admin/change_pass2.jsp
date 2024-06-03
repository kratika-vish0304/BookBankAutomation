


  <%@page import="java.sql.*"%>
        <%
             String user=request.getParameter("user"); 
             String old=request.getParameter("pass"); 
             String neww=request.getParameter("new");
             ResultSet rs=null;
          try{
             
             Connection conn = null;
             Class.forName("com.mysql.jdbc.Driver");
             conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","");
              Statement st=conn.createStatement();
             String qry="select * from login";
             rs=st.executeQuery(qry);
             while(rs.next()){
             if(user.equals(rs.getString("username")) && old.equals(rs.getString("password"))){
             PreparedStatement ps = null;
                String qry2="Update login set password=? where username=?";
                ps = conn.prepareStatement(qry2);
                ps.setString(1,neww );
                ps.setString(2,user );
               
                 int i = ps.executeUpdate();
                        if(i > 0)
                        {
                            out.println("updated");

                         }
                         else
                         {
                              out.print("There is a problem in updating Record.");
                          }
               }
            else{
                 out.print("enter correct data");
               }
             
            
            
            }
            }
            catch(Exception e){
    out.println(e);
    }
             
        %>
