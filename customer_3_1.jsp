
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
      String Nam=request.getParameter("Nam");
      String gmai=request.getParameter("gmai");
      String rn=request.getParameter("rn");
      String fn=request.getParameter("fn");
      String pf=request.getParameter("pf");
      String sta=request.getParameter("sta");
      String ad=request.getParameter("ad");
      String query="insert into minupage(Nam,gmai,rn,fn,pf,sta,ad)values('"+Nam+"','"+gmai+"','"+rn+"','"+fn+"','"+pf+"','Unpaid','"+ad+"')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM minupage where Nam='"+name+"';";
      ResultSet rs = st.executeQuery(quer);
     
%>
       <%--
   create table minupage (id integer auto_increment,Nam varchar(20) not null,
gmai varchar(30),rn varchar(20),fn varchar(20),pf varchar(20),sta varchar(20),ad varchar(200),primary key(id));
insert into minupage(Nam,gmai,rn,fn,pf,sta,ad) values ('sumit','sumit@gmail.com','sumitdhaba','paneer masala','100','unpaid','patna');

select * from minupage;
   
   
Id	Enter your Name	  Enter your Phone Number	Restaurant Name 	Food Name	Price of food	Status 	Address	

  --%>
<form method="post" action="viewallcourse.jsp">
    <center><h1>NEW MINU ITEMS ADDED SUCCESSFULLY</h1></center>
        
<table Id="course-table" align="center">
<tr>
                
                <td>Enter your Name</td>
                 <td>Enter your Phone Number</td>
                <td>Restaurant Name</td>
                <td>Food Name</td>
                 <td>Price of food</td>
                 <td>Status</td>
                <td>Address</td>
                 
            </tr>
<%
 while(rs.next()){    
%>
<tr>
   
     <td><%=rs.getString("Nam")%></td>
    <td><%=rs.getString("gmai")%></td>
    <td><%=rs.getString("rn")%></td>
     <td><%=rs.getString("fn")%></td>
    <td><%=rs.getString("pf")%></td>
    <td><%=rs.getString("sta")%></td>
    <td><%=rs.getString("ad")%></td>
</tr>
<%}%>
</table>
<%
 
}
catch(Exception e){out.println(e);}
%> 
            
</form>  

    </body>
</html>
 


