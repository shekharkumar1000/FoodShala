
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
            <li class="active"><a href="admin.jsp">Home</a></li>
            <li class="dropdown"><a href="#">Menu Items</a>
                <div class="dropdown-content">
                <a href="viewallcourse.jsp">View Menu Items</a>
                <a href="addcourse.jsp">Add New Menu Items</a>
                <a href="modifycourse.jsp">Modify Menu Items</a>
                <a href="deletecourse.jsp">Delete Menu Items</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">Customers</a>
                <div class="dropdown-content">
                <a href="viewallstudent.jsp">View Customers</a>
                <a href="addstudent.jsp">Add New Customers</a>
                <a href="modifystudent.jsp">Modify Customers</a>
                <a href="deletestudent.jsp">Delete Customers</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">Restaurants</a>
                <div class="dropdown-content">
                <a href="viewallrestaurants.jsp">View Restaurants</a>
                <a href="addrestaurants.jsp">Add New Restaurants</a>
                <a href="modifyrestaurants.jsp">Modify Restaurants</a>
                <a href="deleterestaurants.jsp">Delete Restaurants</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">Customers Order</a>
                <div class="dropdown-content">
                <a href="viewallcustomersorder.jsp">View Customers Order</a>
                <a href="addcustomersorder.jsp">Add New Customers Order</a>
                <a href="modifycustomersorder.jsp">Modify Customers Order</a>
                <a href="deletecustomersorder.jsp">Delete Customers Order</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">Customers Payment Menu page</a>
                <div class="dropdown-content">
                <a href="enrol.jsp">Enrol Customers Menu page</a>
                <a href="removestudent.jsp">Remove Customers Menu page</a>
                </div>
            </li>
            <li><a href="fee.jsp">Payment of Customers </a></li>
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
      String nam=request.getParameter("nam");
      String id=request.getParameter("id");
      String duration=request.getParameter("duration");
      String technology=request.getParameter("technology");
       String qq="Update CourseMaster set id="+id+" where id="+id+" ;";
        int resu = st.executeUpdate(qq);
        String r="Update CourseMaster set nam='"+nam+"' where id="+id+" ;";
        int rer = st.executeUpdate(r);
        String up="Update CourseMaster set duration='"+duration+"' where id="+id+" ;";
         int rr = st.executeUpdate(r);
        String uup="Update CourseMaster set technology='"+technology+"' where id="+id+" ;";
        int ry = st.executeUpdate(uup);
       String quer="SELECT * FROM CourseMaster";
      ResultSet rs = st.executeQuery(quer);
      
   %>   
   <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
       <form method="post" action="deletecourse_1.jsp">
      <table Id="course-table" align="center">
      <tr><td>SELECT THE COURSE TO DELETE</td><td><select name="selectedEmployee">
<% while(rs.next()){ %><option value=<%=rs.getInt("id")%>><%=rs.getString("name")%><%}%></option></form></select><br> </td>
           <tr><td>SELECT THE COURSE TO DELETE</td><td><select name="selectedEmployee">
<% while(rs.next()){ %><option value=<%=rs.getInt("id")%>><%=rs.getString("nam")%><%}%></option></form></select><br> </td>
                <tr><td>SELECT THE COURSE TO DELETE</td><td><select name="selectedEmployee">
<% while(rs.next()){ %><option value=<%=rs.getInt("id")%>><%=rs.getString("name")%><%}%></option></form></select><br> </td>
                     <tr><td>SELECT THE COURSE TO DELETE</td><td><select name="selectedEmployee">
<% while(rs.next()){ %><option value=<%=rs.getInt("id")%>><%=rs.getString("name")%><%}%></option></form></select><br> </td>
      </table>
</form>
  <%    
  }
  catch(Exception e){out.println(e);}
%>

    </body>
</html>