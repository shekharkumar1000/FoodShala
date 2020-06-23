
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
      String kd=request.getParameter("selectedEmployee");
      String query="delete from minupage where id="+ kd;
      int result=st.executeUpdate(query);
      
   %> 
   <center><H1><br><br><b> MINU ITEM DELETED SUCCESSFULLY</b></H1></center>
   <%--
   create table minupage (id integer auto_increment,Nam varchar(20) not null,
gmai varchar(30),rn varchar(20),fn varchar(20),pf varchar(20),sta varchar(20),ad varchar(200),primary key(id));
insert into minupage(Nam,gmai,rn,fn,pf,sta,ad) values ('sumit','sumit@gmail.com','sumitdhaba','paneer masala','100','unpaid','patna');

select * from minupage;
   
   
Id	Enter your Name	  Enter your Phone Number	Restaurant Name 	Food Name	Price of food	Status 	Address	

  --%>
   <%    
  }
   catch(Exception e){
%>
 <link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                   <center><h3>This MINU ITEMS is already enrolled </h3></center>
               </div>
              </table>
<%
}
%>

    </body>
</html>




