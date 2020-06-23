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
       String quer="SELECT * FROM CourseMaster";
      ResultSet rs = st.executeQuery(quer);
      
   %>   
   <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%><h3><marquee><BR>WELCOME <%=name%></marquee></h3>
   <form method="post" action="customer_3.jsp">
      <table Id="course-table" align="center">
          <tr>
                
                <td>Restaurant Name</td>
                <td>Food Name</td>
                <td>Preference</td>
                 <td>Price of food</td>
                <td>Select</td>
            </tr>
          <%
 while(rs.next()){   
 %>
            <tr>
              
                <td><%=rs.getString("nam")%></td>
                <td><%=rs.getString("duration")%></td>
                <td><%=rs.getString("technology")%></td>
                <td><%=rs.getInt("fees")%></td>
                <td><input type="radio" name="selectedStudent" value="<%=rs.getInt("id")%>"</td>
                
            </tr>
            <%  }  %>
            
           

            <tr>
                 <td colspan="6" align="center" ><input type="submit" value="Order Food"></td>
                 
            </tr>
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