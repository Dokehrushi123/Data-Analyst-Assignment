select * from office1;

select * from office1 limit 3,2;

## showing only these columns
select emp_name, emp_city,emp_salary from office1;

## derived column
select emp_name ,emp_salary, 0.2 * emp_salary from office1;

## show two columns
select  emp_name ,emp_salary,0.2* emp_salary as bonus , emp_salary + 0.2* emp_salary as total from office1;

## Distinct columns
## show particular column only once write
select distinct emp_dept,emp_city from office1;

##order by taking sequence
select * from office1 
order by emp_salary;

select * from office1 order by emp_dept,sub_dept;

## (=, !=, >, >=, <, <=, <>) operator
select * from office1 where sub_dept=101;

select * from office1 where sub_dept !=101;

select * from office1 where sub_dept=101 order by sub_dept;

select * from office1 where emp_salary < 50000 order by emp_salary;

select * from office1 where Exp_yrs < 7;

##officers from the table
select * from office1 where emp_des = "Officer";

## Between , Not between & and Operator

##between 30000 and 50000 value is taking
select * from office1
where emp_salary between 30000 and 50000
order by emp_salary;

select * from office1  
where emp_salary not between 30000 and 50000
order by emp_salary;
##type1
select * from office1 
where sub_dept between 101 and 103;

##type2
select * from office1 
where sub_dept <104;

##type3
select * from office1 
where sub_dept>=101 and sub_dept<=103;

select * from office1
where emp_dept="HR" and sub_dept=102;

select * from office1
where sub_dept=103 or sub_dept=105; ## in same column

select * from office1
where emp_dept="HR" or emp_city="Delhi";

select * from office1
where emp_city="pune" or emp_city="Delhi";

select * from office1
where sub_dept=105 and 103;

select * from office1
where emp_des="manager" or "officer";

select * from office1
where emp_city="kanpur" and emp_dept="HR";

## employee in hr and subdept 101 and 103 
select * from office1
where emp_dept= "HR" and (sub_dept=101 or sub_dept= 103);

## In operator (used in case multiple or)

select * from office1
where sub_dept in(101,102,106);

## NOt in 
select * from office1
where sub_dept not in(101,102,106);

select emp_name, emp_salary,emp_des,exp_yrs,
case Exp_yrs
when Exp_yrs<5 then (emp_salary*0.2 + emp_salary)
when Exp_yrs<8 and Exp_yrs>5 then (emp_salary*0.25 + emp_salary)
when Exp_yrs<10 and Exp_yrs>8 then (emp_salary*0.30 + emp_salary)
else (emp_salary*0.40 + emp_salary)
end as Total
from office1;

select emp_des,emp_salary
case emp_des
when emp_des = "Manager" then (emp_salary*0.2 + emp_salary)
when emp_des = "VP" then (emp_salary*0.25 + emp_salary)
else (emp_salary)
end as total
from office1;


##Like operator (wild card) (% , _)
select * from office1 where emp_name like ("h%");