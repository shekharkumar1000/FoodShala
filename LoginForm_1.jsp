<%-- 
    Document   : LoginForm_1
    Created on : Dec 15, 2018, 10:49:31 AM
    Author     : HP
--%>
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
   Statement sut;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
      sut=conn.createStatement();
       String quer="SELECT * FROM studentMaster";
      ResultSet rs = st.executeQuery(quer);
      String qer="SELECT * FROM RestaurantMaster";
      ResultSet rst = sut.executeQuery(qer);
      
   %> 
 <%--
create table RestaurantMaster(ID integer auto_increment,Name varchar(20) not null,passord varchar(20),
email varchar(20),mobile varchar(20),city varchar(20),primary key(id));
insert into RestaurantMaster(name,passord,email,mobile,city) values ('chankyarestaurant','chankya123','chankya@gmail.com','123456','london');
insert into RestaurantMaster(name,passord,email,mobile,city) values ('royalrestaurant','royal123','royal@gmail.com','123457','paris');
insert into RestaurantMaster(name,passord,email,mobile,city) values ('testyrestaurant','testy123','testy@gmail.com','123489','new york');
select * from RestaurantMaster;
  --%>


<%
  String name=request.getParameter("name");
  String pwd=request.getParameter("password");
 while(rs.next())
       {
          
          String nam=rs.getString("name");
          String passord=rs.getString("passord");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages.jsp"); 
             }
          
       }
 while(rst.next())
       {
          
          String nam=rst.getString("name");
          String passord=rst.getString("passord");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages_2.jsp"); 
             }
       }
  if(name.equals("admin")&& pwd.equals("admin123"))
  {
      session.setAttribute("username",name);
      response.sendRedirect("DisplayMessages_1.jsp"); 
  }
  else{
       %>
      <table Id="course-table" align="center">
          <div id="course-table">
              <H2> Already exist / Invalid username and password<a href="home.jsp"><br>Try again</a></H2>
          </div>
      </table>
      
     

<%  
  }

%>

   <%    
  }
  catch(Exception e){
%>
<table Id="course-table" align="center">
          <div id="course-table">
              <H2> Already exist / Invalid username and password<a href="home.jsp"><br>Try again</a></H2>
          </div>
      </table>


<%
}
%>

