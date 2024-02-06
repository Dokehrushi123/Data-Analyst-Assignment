use hello;

Create table draw(dname varchar(20), painter varchar(20));
select * from draw;

start transaction;
insert into draw values("scene","praju");

rollback;
insert into draw values("waterfall","Hrushi");
commit;
rollback;

update draw set dname="portrait" where dname="waterfall";

drop table draw;

savepoint first;

insert into draw values("Blur","Krishna");
insert into draw values("HDR","Ram"); 
savepoint two;

insert into draw values("Picasso","kunal");
rollback;

create table employee
(Eid int primary key auto_increment, ename varchar(20),age int);

insert into employee (ename,age) values ("rajesh",26);
insert into employee (ename,age) values ("riya",27);
insert into employee (ename,age) values ("hrushi",26);

select * from employee;