
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
            <li class="active"><a href="home.jsp">Back</a></li>
           
        </ul>
        </div>
      <form method="post" action="Registrationrestaurant_1.jsp"> 
          <table Id="course-table" align="center">
          <tr><td>Restaurant Name</td><td><input type="text" name="name"></td></tr>
           <tr><td>password</td><td><input type="password" name="passord"></td></tr>
            <tr><td>Email</td><td><input type="text" name="email"></td></tr>
          <tr><td>Mobile</td><td><input type="text" name="mobile"></td></tr>
            <tr><td>City</td><td><input type="text" name="city"></td></tr>
            <tr><TD>SUBMIT THE DETAILS</TD><td><input type="Submit" value="REGISTER NOW "></td></tr>
         </form>   
    </body>
</html>
 <%--
   
   create table students (ID integer auto_increment,Name varchar(20) not null,passord varchar(20) not null,email varchar(20) not null
,mobile varchar(20) not null,city varchar(20) not null,primary key(id));

insert into students(name,passord,email,mobile,city) values ('jack','jack123','jack@gmail.com','123456','london');
insert into students(name,passord,email,mobile,city) values ('bob','bob123','bob@gmail.com','123457','paris');
insert into students(name,passord,email,mobile,city) values ('satya','satya123','satya@gmail.com','123489','new york');
select * from students;
   --%>


