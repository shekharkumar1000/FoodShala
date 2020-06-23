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
        <div id="course-table">
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
   Statement stu;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
      stu=conn.createStatement();
            String name=(String)session.getAttribute("username");
      String pasord=(String)session.getAttribute("pasord");
   
       String ir=request.getParameter("selectedStudent");
       String quer="SELECT * FROM CourseMaster where id="+ir;
      ResultSet rs = st.executeQuery(quer);
      
   %>
   <form method="post" action="customer_3_1.jsp">
      <table Id="course-table" align="center">
          <%
 while(rs.next()){   
 %>
            <tr>
                <td> id</td>
                <td> <input type="text" value="<%=rs.getInt("id")%>" name="id" readonly></td>
            </tr><tr>
                <td>Enter your Name</td>
                <td><input type="text" value="<%=name%>" name="Nam" readonly></td>
      </tr><tr>    
          <td>Enter your Phone Number</td>
                <td><input type="text" value="" name="gmai"></td>
      </tr><tr>
                <td>Restaurant Name</td>
                <td><input type="text" value="<%=rs.getString("nam")%>" name="rn" readonly></td>
      </tr><tr>  
                <td>Food Name</td>
                <td><input type="text" value="<%=rs.getString("duration")%>" name="fn" readonly></td>
      </tr><tr> 
          <td>Price of food</td>
           <td><input type="text" value="<%=rs.getString("fees")%>" name="pf" readonly></td>
      </tr><tr>  
                <td>Address</td>
                <td><input type="text" value="" name="ad"></td>
      </tr>
      <%  }  %>    <tr>
                 <td colspan="7" align="center" ><input type="submit" value="Order Now"></td>
                  </tr>
            </form>
            </table>
             <br><br>
  
  <%    
  }
  catch(Exception e){out.println(e);}
%>
     </div>
  </body>
</html>