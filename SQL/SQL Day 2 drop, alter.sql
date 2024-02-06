create database Hello;

 use Hello;
 

create table newtable(id int,Student_name char(20), My_course char(15),Duration int,Fees int);


Select * from newtable;

desc course;

rename table newtable to course;

Select * from course;

Alter table course
add column Age int after Student_name;


Alter table course
Drop column Age;

Alter table course
modify column Student_name char(30);