<%-- 
    Document   : LoginForm
    Created on : Dec 15, 2018, 10:49:01 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="css.css"/>
 <div id="course-table">
<% 
   String user =(String)session.getAttribute("username");
   if(user==null){
%>
<form method="post" action="LoginForm_1.jsp">
    
         <table Id="course-table" align="center">
             
             <tr>
                 <td rowspan="4" align="center" ><img src="photo/login.png"></td>
               
            </tr>
             <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" required></td>
            </tr>
             <tr>
                 <td colspan="2" align="center" ><input type="submit" value="LOGIN"></td>
               
            </tr>
            
        </table>
           <center>   <h4> Are you New Restaurant User ? <a href="Registrationrestaurant.jsp">Create an account</a></h4></center>
           <center>   <h4> Are you New Customer User ? <a href="Registrationcustomer.jsp">Create an account</a></h4></center>
            
</form>
<%
  }
else{
  response.sendRedirect("DisplayMessages.jsp");
}
%>
 </div>