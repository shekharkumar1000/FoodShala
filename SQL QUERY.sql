create table CourseMaster (id integer auto_increment,Nam varchar(20) not null ,
DURATION varchar(20),fees integer  ,TECHNOLOGY varchar(20),primary key(id));
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('chankya','paneer masala','Veg',100);
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('royal','chokobar','Non veg',200);
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('testy','tanduri','Veg',250);
select * from CourseMaster;

create table studentMaster(ID integer auto_increment,Name varchar(20) not null ,passord varchar(20),
email varchar(20),mobile varchar(20),city varchar(20),primary key(id));
insert into studentMaster(name,passord,email,mobile,city) values ('jack','jack123','jack@gmail.com','123456','Nonveg');
insert into studentMaster(name,passord,email,mobile,city) values ('bob','bob123','bob@gmail.com','123457','Nonveg');
insert into studentMaster(name,passord,email,mobile,city) values ('satya','satya123','satya@gmail.com','123489','Veg');
select * from studentMaster;

create table RestaurantMaster(ID integer auto_increment,Name varchar(20) not null,passord varchar(20),
email varchar(20),mobile varchar(20),city varchar(20),primary key(id));
insert into RestaurantMaster(name,passord,email,mobile,city) values ('chankya','chankya123','chankya@gmail.com','123456','london');
insert into RestaurantMaster(name,passord,email,mobile,city) values ('royal','royal123','royal@gmail.com','123457','paris');
insert into RestaurantMaster(name,passord,email,mobile,city) values ('testy','testy123','testy@gmail.com','123489','new york');
select * from RestaurantMaster;

create table minupage (id integer auto_increment,Nam varchar(20) not null ,
gmai varchar(30),rn varchar(20),fn varchar(20),pf varchar(20),sta varchar(20),ad varchar(200),primary key(id));
insert into minupage(Nam,gmai,rn,fn,pf,sta,ad) values ('jack','7903933705','chankya','paneer masala','100','unpaid','patna');
insert into minupage(Nam,gmai,rn,fn,pf,sta,ad) values ('bob','7903966705','royal','chokobar','200','unpaid','punjab');
insert into minupage(Nam,gmai,rn,fn,pf,sta,ad) values ('satya','7003953705','testy','tanduri','250','unpaid','rajgir');
select * from minupage;


create table CoursesEnrolled (eid integer auto_increment,studentid integer not null,courseid integer not null,feeid integer ,
primary key(eid),Foreign key(courseid) references CourseMaster(id),Foreign key(studentid) references studentMaster(ID));
select * from CoursesEnrolled;

create table feepaid (id integer auto_increment,studentsid integer not null,
amount integer,primary key(id),Foreign key(studentsid) references studentMaster(ID));
select * from feepaid;
