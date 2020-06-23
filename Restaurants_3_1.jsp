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
       String ir=request.getParameter("selectedStudent");
       String quer="SELECT * FROM CourseMaster where id="+ir;
      ResultSet rs = st.executeQuery(quer);
      
      
   %>
 <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
   <form method="post" action="Restaurants_1.jsp">
      <table Id="course-table" align="center">
          <%
 while(rs.next()){   
 %><tr>
                <td> Id:</td>
                <td> <input type="text" value="<%=rs.getInt("id")%>" name="id" readonly</td>
            </tr>
            <tr>
                <td>Restaurant Name:</td>
                <td><input type="text" value="<%=rs.getString("nam")%>" name="nam"></td>
      </tr><tr>    
          <td>Food Name:</td>
                <td><input type="text" value="<%=rs.getString("duration")%>" name="duration"></td>
      </tr>
      <tr><td> Preference </td><td> <select name="technology">
                <option>Veg</option>
                 <option>Nonveg</option>
                     </select></td></tr>

      <tr>
          <td>Price of food:</td>
           <td><input type="text" value="<%=rs.getInt("fees")%>" name="fees"></td>
      </tr>
      <%  }  %>        <tr>
                 <td colspan="5" align="center" ><input type="submit" value="Modify"></td>
                 
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