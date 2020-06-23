
<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edufect</title>
        <link rel="stylesheet" href="css.css"/>
    </head>
    <body>
          <div id="course-table">
        <ul>
            <li class="active"><a href="home.jsp">Home</a></li>
           
              <li  class="dropdown"><a href="#">Ordered food</a>
                <div class="dropdown-content">
                <a href="customer_1.jsp">View Ordered food</a>           
                <a href="customer_2.jsp">Cancel Ordered food</a>
                </div>
            </li>
            <li><a href="profile.jsp">Payment Detail</a></li>
           
             <li style="float:right"><a href="logout.jsp">Logout</a></li>
        </ul>
        </div>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
            String name=(String)session.getAttribute("username");
      String pasord=(String)session.getAttribute("pasord");
      String Nam=request.getParameter("Nam");
      String id=request.getParameter("id");
      String gmai=request.getParameter("gmai");
      String rn=request.getParameter("rn");
      String fn=request.getParameter("fn");
     String pf=request.getParameter("pf");
       String sta=request.getParameter("sta");
     String ad=request.getParameter("ad");
       String qq="Update minupage set id="+id+" where id="+id+" ;";
        int resu = st.executeUpdate(qq);
        String r="Update minupage set Nam='"+Nam+"' where id="+id+" ;";
        int rer = st.executeUpdate(r);
        String up="Update minupage set gmai='"+gmai+"' where id="+id+" ;";
         int rr = st.executeUpdate(up);
        String uup="Update minupage set rn='"+rn+"' where id="+id+" ;";
        int ry = st.executeUpdate(uup);
        String qqr="Update minupage set fn='"+fn+"' where id="+id+" ;";
        int restu = st.executeUpdate(qqr);
          String sk="Update minupage set pf='"+pf+"' where id="+id+" ;";
         int rrt = st.executeUpdate(sk);
           String qtqr="Update minupage set sta='"+sta+"' where id="+id+" ;";
        int restut = st.executeUpdate(qtqr);
          String stk="Update minupage set ad='"+ad+"' where id="+id+" ;";
         int rrtr = st.executeUpdate(stk);
       String quer="SELECT * FROM minupage  where Nam='"+name+"';";
      ResultSet rs = st.executeQuery(quer);
      
   %>  


  
  
      <table Id="course-table" align="center">
           <tr>
               
                <td>Your Name</td>
                <td>Your Phone Number</td>
                <td>Restaurant Name</td>
                 <td>Food Name</td>
                 <td>Price of food</td>
                 <td>Status</td>
                 <td>Address</td>
            </tr>
    <%
 while(rs.next()){   
 %>
            <tr>
                
                <td><%=rs.getString("Nam")%></td>
                 <td><%=rs.getString("gmai")%></td>
                <td><%=rs.getString("rn")%></td>
                 <td><%=rs.getString("fn")%></td>
                 <td><%=rs.getString("pf")%></td>
                 <td><%=rs.getString("sta")%></td>
                 <td><%=rs.getString("ad")%></td>
            </tr>
            <%  }  %>
</table>
  <%    
  }
  catch(Exception e){out.println(e);}
%>

    </body>
</html>



