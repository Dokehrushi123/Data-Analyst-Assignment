select min(Exp_yrs) from office1;

## used group by
select emp_city ,avg(emp_salary) from office1 group by emp_city;

select sub_dept ,avg(emp_salary) from office1 group by sub_dept;
select emp_dept ,avg(emp_salary) from office1 group by emp_dept;

select emp_city, max(emp_salary) from office1 group by emp_city;

select emp_des, avg(emp_salary) from office1 group by emp_des;

select emp_salary, count(emp_name) from office1
where emp_Salary >50000 group by emp_salary;

select emp_salary,count(emp_name) from office1
where emp_salary > 40000 and emp_salary<80000
group by emp_Salary;

select sub_dept, emp_city, avg(emp_salary) from office1 group by 
sub_dept, emp_city;

## Round 

select round(1545460.54555,3);
select emp_city,emp_dept,
round(max(emp_salary)) as Max_salary
from office1 
group by emp_city,emp_dept
order by emp_city;

select sub_dept,avg(emp_salary) 
from office1 
where sub_dept in(102,104,105)
group by sub_dept;

##Another way using having
select sub_dept,avg(emp_salary) 
from office1 
group by sub_dept having sub_dept in(102,104,105);

## Caution 

select sub_dept, sub_dept in (102,103,105), avg(emp_salary)
from office1
group by sub_dept;