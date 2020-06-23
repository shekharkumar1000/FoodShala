
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
      String name=request.getParameter("name");
      String passord=request.getParameter("passord");
      String email=request.getParameter("email");
      String mobile=request.getParameter("mobile");
      String city=request.getParameter("city");
      String query="insert into studentMaster(Name,passord,email,mobile,city)values('"+name+"','"+passord+"','"+email+"','"+mobile+"','"+city+"')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM studentMaster";
      ResultSet rs = st.executeQuery(quer);
     
%>
         <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
<form method="post" action="viewallcourse.jsp">
    <center><h1>NEW STUDENT CREATED SUCCESSFULLY</h1></center>
        

<%
 
}
catch(Exception e){out.println(e);}
%> 
            
</form>  

    </body>
</html>
 


