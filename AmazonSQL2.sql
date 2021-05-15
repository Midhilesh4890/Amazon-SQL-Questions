

--Table Creation

CREATE TABLE Emp(
[Group]  varchar(20),
[Sequence]  int )

INSERT INTO Emp VALUES('A',1)
INSERT INTO Emp VALUES('A',2)
INSERT INTO Emp VALUES('A',3)
INSERT INTO Emp VALUES('A',5)
INSERT INTO Emp VALUES('A',6)
INSERT INTO Emp VALUES('A',8)
INSERT INTO Emp VALUES('A',9)
INSERT INTO Emp VALUES('B',11)
INSERT INTO Emp VALUES('C',1)
INSERT INTO Emp VALUES('C',2)
INSERT INTO Emp VALUES('C',3)

select [group],
min(sequence) as min_seq_rank,
max(sequence) as max_seq_rank
from
(select * , ROW_NUMBER() over(partition by [group] order by Sequence) as rnk,
(sequence - ROW_NUMBER() over(partition by [group] order by Sequence)) as grp_split
from EMP)as A
group by [group]
order by [group]
