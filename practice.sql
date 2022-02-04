
CREATE TABLE B(
id int)

INSERT INTO B VALUES(1)
INSERT INTO B VALUES(2)
INSERT INTO B VALUES(3)
INSERT INTO B VALUES(3)
INSERT INTO B VALUES(null)
INSERT INTO B VALUES(4)
INSERT INTO B VALUES(null)
INSERT INTO B VALUES(5)

select * from B

select * from dbo.A
left join dbo.B
on A.id = B.id;


select * from dbo.A
right join dbo.B
on A.id = B.id;


select * from dbo.A
inner join dbo.B
on A.id = B.id;