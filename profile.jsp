
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
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
            String name=(String)session.getAttribute("username");
      String pasord=(String)session.getAttribute("pasord");
     
       String quer="select name,passord,DURATION,nam,eid,fees,studentid,amount,courseid from studentMaster Inner join CoursesEnrolled on CoursesEnrolled.studentid=studentMaster.id Inner join CourseMaster on CoursesEnrolled.courseid=CourseMaster.id Inner join feepaid on feepaid.id=CoursesEnrolled.eid where name='"+name+"'and passord='"+pasord+"';";
      ResultSet rs = st.executeQuery(quer);
      
   %>  
  <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
   <form method="post" action="fee_2.jsp">
      <table Id="course-table" align="center">
               <%
 while(rs.next()){   
 %>
   <tr><td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Payment Form Details</h2></font>
                    
                </tr>
          <tr>
                <td>CUSTOMER NAME</td><td><%=rs.getString("name")%></td>
          </tr>
         
          <tr>
              <td>FOOD NAME</td><td><%=rs.getString("DURATION")%></td>
          </tr>
          <tr>
               <td>TOTAL Amount</td> <td><%=rs.getString("fees")%></td>
          </tr>
          <tr>
               <td>Amount PAID</td><td><%=rs.getString("amount")%></td>
          </tr>
          <tr>
              <td>Amount REMAINING</td><td><%=rs.getInt("fees")-rs.getInt("amount")%></td> 
          </tr>     
            <%  }  %>
            </table>
             <br><br>
  </form>
  <%    
  }
  catch(Exception e){out.println(e);}
%>
     </div>
  </body>
</html>