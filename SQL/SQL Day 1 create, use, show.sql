create database first;

use first;

create table students (id int,name char(20),Age int,Course char(10));

show tables;

Select * from students;

insert into students values(1,"Hrushi",22,"DS");
insert into students values(2,"Adesh",20,"DA");
insert into students values(3,"Kunal",21," ");
insert into students values(4,"Abhi",22,"Null");
insert into students values(5,"Atharav",21,Null);

insert into students(id,name,Age)values(6,"Suraj",21);

insert into students values(6,"Prasad",18,"BE"),(6,"Prasad",18,"ME");



create table Employee(id int,name char(20),Age int,Gender char(10),Hobby char(10));

show tables;
insert into Employee(id,name,Age,Gender,Hobby)values(1,"Hrushi",22,"Male","Cricket"),(2,"Adesh",21,"Male","Football"),(3,"Riya",20,"Female","Dancing");

Select * from Employee;