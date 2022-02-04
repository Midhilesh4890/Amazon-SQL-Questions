CREATE TABLE Tokyo(
 [Country] varchar(30) ,
 [Gold] int ,
 [Silver] int,
 [Bronze] int ,
 [Total] int) 

INSERT INTO Tokyo  VALUES ('TPE',0, 1, 0, 1)
INSERT INTO Tokyo  VALUES ('SRB',0, 1, 0, 1)
INSERT INTO Tokyo  VALUES ('ROC',0, 1, 0, 1)
INSERT INTO Tokyo  VALUES ('NED',0, 1, 0, 1)
INSERT INTO Tokyo  VALUES ('IND',0, 1, 0, 1)
INSERT INTO Tokyo  VALUES ('BEL',0, 1, 0, 1)
INSERT INTO Tokyo  VALUES ('KOS',1, 0, 0, 1)
INSERT INTO Tokyo  VALUES ('KOR',1, 0, 0, 1)
INSERT INTO Tokyo  VALUES ('IRI',1, 0, 0, 1)
INSERT INTO Tokyo  VALUES ('ECU',1, 0, 0, 1)
INSERT INTO Tokyo  VALUES ('JPN',1, 1, 0, 2)
INSERT INTO Tokyo  VALUES ('CHN',2, 1, 0, 3)

----Solution

select * from Tokyo
select *,rank() over(order by Gold desc,total desc) as Country_Rank from Tokyo