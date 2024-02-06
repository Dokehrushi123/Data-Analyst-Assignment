create table meals(mealname varchar(20),rate decimal(5,2));

insert into meals values("Dosa",70.00);
insert into meals values("Idli",50.00);
insert into meals values("Poha",60.00);

create table drinks(drinkname varchar(20),rate decimal(5,2));

insert into drinks values("Tea",20.00);
insert into drinks values("Coffe",30.00);
insert into drinks values("Pepsi",40.00);

select * from meals;
select * from drinks;




select * from meals cross join drinks;
###showing error
select mealname, drinkname, rate from meals cross join drinks;
###another method 1
select Meals.mealname,Drinks.drinkname,Meals.rate,Drinks.rate 
from meals cross join drinks;

### another method 2
select M.mealname,D.drinkname,M.rate,D.rate from meals as M cross join drinks as d;

### adding two columns or addition
select M.mealname,D.drinkname,
M.rate+D.rate as Total_rate
from meals as m
cross join drinks as d;

##two table column join method
select office1.emp_id, office1.emp_name,office1.reporting, office.emp_name from office
inner join office1
on office.emp_id = office1.reporting;

## Self Join creating another mirror table in same table
select emp.emp_id, emp.emp_name,emp.Reporting, mgr.emp_name as reporting_mgr
from office as mgr
inner join office as emp
on emp.reporting = mgr.emp_id
order by mgr.emp_id;

