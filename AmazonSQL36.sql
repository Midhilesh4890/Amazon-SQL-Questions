Create Table SeatArrangement (
ID int,
StudentName Varchar(30)
)

Insert into SeatArrangement Values (1,'Emma')
Insert into SeatArrangement Values (2,'John')
Insert into SeatArrangement Values (3,'Sophia')
Insert into SeatArrangement Values (4,'Donald')
Insert into SeatArrangement Values (5,'Tom')
----------------------------------------------------

select * from SeatArrangement

select 
(case when id%2=0 then id-1
when id%2!=0 and id=(select count(id) from SeatArrangement) then id else id+1 end) as id,studentName from SeatArrangement s
order by id;






