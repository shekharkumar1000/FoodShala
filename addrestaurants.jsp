
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
      <form method="post" action="addrestaurants_1.jsp"> 
          <table Id="course-table" align="center">
          <tr><td>Restaurant Name</td><td><input type="text" name="name"></td></tr>
           <tr><td>password</td><td><input type="text" name="passord"></td></tr>
            <tr><td>Email</td><td><input type="text" name="email"></td></tr>
          <tr><td>Mobile</td><td><input type="text" name="mobile"></td></tr>
            <tr><td>City</td><td><input type="text" name="city"></td></tr>
            <tr><TD>SUBMIT THE DETAILS</TD><td><input type="Submit" value="ADD RESTAURANT "></td></tr>
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


