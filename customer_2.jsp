
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
      String quer="SELECT * FROM minupage  where Nam='"+name+"';";
      ResultSet rs = st.executeQuery(quer);
      
   %>     
   <%--
   create table minupage (id integer auto_increment,Nam varchar(20) not null,
gmai varchar(30),rn varchar(20),fn varchar(20),pf varchar(20),sta varchar(20),ad varchar(200),primary key(id));
insert into minupage(Nam,gmai,rn,fn,pf,sta,ad) values ('sumit','sumit@gmail.com','sumitdhaba','paneer masala','100','unpaid','patna');

select * from minupage;
   
   
Id	Enter your Name	  Enter your Phone Number	Restaurant Name 	Food Name	Price of food	Status 	Address	

  --%>
      <form method="post" action="customer_2_1.jsp">
      <table Id="course-table" align="center">
          <tr><td>SELECT THE MINU ITEMS TO DELETE</td><td>
          <select name="selectedEmployee">
              
          <% while(rs.next()){ %>
                <option value=<%=rs.getInt("id")%>>
                <%=rs.getString("Nam")%>,
                <%=rs.getString("gmai")%>,
                <%=rs.getString("rn")%>,
                <%=rs.getString("fn")%>,
               <%=rs.getString("pf")%>
            <%  }  %>
                </option>
             </form>
            </select>
             <br>
              </td></td><tr><td>SUBMIT THE DETAILS</td>
                 <td><input type="Submit" value="Cancel order"></td></tr>
      </table>
</form>
  <%    
  }
  catch(Exception e){out.println(e);}
%>

    </body>
</html>



