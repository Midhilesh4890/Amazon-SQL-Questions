Create Table Employee_2(
EmpName Varchar(30),
DeptName Varchar(25),
DeptNo Bigint,
Salary Bigint);

Insert into Employee_2 Values('Mark','HR',101,30000);
Insert into Employee_2 Values('John','Accountant',101,20000);
Insert into Employee_2 Values('Smith','Analyst',101,25000);
Insert into Employee_2 Values('Donald','HR',201,40000);
Insert into Employee_2 Values('James','Analyst',201,22000);
Insert into Employee_2 Values('Maria','Analyst',201,38000);
Insert into Employee_2 Values('David','Manager',201,33000);
Insert into Employee_2 Values('Martin','Analyst',301,22000);
Insert into Employee_2 Values('Robert','Analyst',301,56000);
Insert into Employee_2 Values('Michael','Manager',301,34000);
Insert into Employee_2 Values('Robert','Accountant',301,37000);
Insert into Employee_2 Values('Michael','Analyst',301,28000);

---------------

select * from Employee_2

select * from Employee_2
where salary=any(select min(salary) from Employee_2 group by deptno)
or salary=any(select max(salary) from Employee_2 group by deptno)

-------------Alternate Solution---------------------

with CTE as
(
select *,
Rank() over(partition by deptNo order by Salary asc) as RankTop,
Rank() over(partition by deptNo order by Salary desc) as RankBottom
from Employee_2)

select EmpName,DeptName,DeptNo,Salary from CTE
where RankTop = 1 or RankBottom =1
order by DeptNo,Salary





