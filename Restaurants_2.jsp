
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
       String quer="SELECT * FROM CourseMaster";
      ResultSet rs = st.executeQuery(quer);
      
   %>   
      <form method="post" action="Restaurants_2_1.jsp"> 
          <table Id="course-table" align="center">           
         
          <tr>
                <td> Restaurant Name</td>
                <td> <input type="text" value="<%=name%>" name="nam" readonly</td>
            </tr>
           <tr><td>Food Name</td><td><input type="text" name="duration"></td></tr>
         
            <tr><td> Preference </td><td> <select name="technology">
                <option>Veg</option>
                 <option>Nonveg</option>
                     </select></td></tr>

            <tr><td>Price of food</td><td><input type="text" name="fees"></td></tr>
            <tr><td>SUBMIT THE DETAILS</td><td><input type="Submit" value="ADD COURSE"></td></tr>
         </form>   
    

 <%    
  }
  catch(Exception e){out.println(e);}
%>
     </div>
  </body>
</html>

