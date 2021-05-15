--Table Creation 

CREATE TABLE Student(
[Student_Name]  varchar(30),
[Total_Marks]  int ,
[Year]  int)

INSERT INTO Student VALUES('Rahul',90,2010)
INSERT INTO Student VALUES('Sanjay',80,2010)
INSERT INTO Student VALUES('Mohan',70,2010)
INSERT INTO Student VALUES('Rahul',90,2011)
INSERT INTO Student VALUES('Sanjay',85,2011)
INSERT INTO Student VALUES('Mohan',65,2011)
INSERT INTO Student VALUES('Rahul',80,2012)
INSERT INTO Student VALUES('Sanjay',80,2012)
INSERT INTO Student VALUES('Mohan',90,2012)



select Student_name,total_marks,[year],prev_yr_marks
from 
(select *,
case when total_marks >= prev_yr_marks then 1 else 0 end as Flag
from 

(select *,
lag(total_marks) over(partition by Student_name order by [Year]) as prev_yr_marks
from Student) A) as B

where Flag = 1
order by [year] asc
