
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
            <li class="active"><a href="Restaurants.jsp">Home</a></li>
           
              <li  class="dropdown"><a href="#">Menu Item</a>
                <div class="dropdown-content">
                <a href="Restaurants_1.jsp">View Menu Item</a>           
                <a href="Restaurants_2.jsp">Add Menu Item</a>
                <a href="Restaurants_3.jsp">Modify Menu Item</a>           
                <a href="Restaurants_4.jsp">Delete Menu Item</a>
                </div>
            </li>
            <li><a href="Restaurants_5.jsp">Ordered Food</a></li>
           
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
      String kd=request.getParameter("selectedEmployee");
      String query="delete from CourseMaster where id="+ kd;
      int result=st.executeUpdate(query);
      
   %> 
   <center><H1><br><br><b>1 COURSE DELETED SUCCESSFULLY</b></H1></center>
    <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),fepaid
  --%>
  <%    
  }
  catch(Exception e){
%>
 <link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                  <center> <h3>This course is already enrolled by the student</h3></center>
               </div>
              </table>
<%
}
%>

    </body>
</html>



