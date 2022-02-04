Create Table StudentInfo_1
(
StudentName Varchar(30),
Subjects Varchar(30),
Marks Bigint
)

insert into StudentInfo_1 Values ('David', 'English', 85)
insert into StudentInfo_1 Values ('David', 'Maths', 90)
insert into StudentInfo_1 Values ('David', 'Science', 88)
insert into StudentInfo_1 Values ('John', 'English', 75)
insert into StudentInfo_1 Values ('John', 'Maths', 85)
insert into StudentInfo_1 Values ('John', 'Science', 80)
insert into StudentInfo_1 Values ('Tom', 'English', 83)
insert into StudentInfo_1 Values ('Tom', 'Maths', 80)
insert into StudentInfo_1 Values ('Tom', 'Science', 92)

------------

select * from StudentInfo_1


select StudentName,English,Maths,Science
from 
(select * from StudentInfo_1) as Source

pivot
(min(marks) 
for subjects in (english,maths,science)
) as PivotTable