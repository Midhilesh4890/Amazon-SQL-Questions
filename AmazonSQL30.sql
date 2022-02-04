Create Table Sales1
(
Id int,
Product Varchar(20),
Sales Bigint
);

Insert into Sales1 values(1001,'Keyboard',20)
Insert into Sales1 values(1002,'Keyboard',25)
Insert into Sales1 values(1003,'Laptop',30)
Insert into Sales1 values(1004,'Laptop',35)
Insert into Sales1 values(1005,'Laptop',40)
Insert into Sales1 values(1006,'Monitor',45)
Insert into Sales1 values(1007,'WebCam',50)
Insert into Sales1 values(1008,'WebCam',55)

------------------
select * from Sales1

-----1st output

select id,product,
Min(Sales) over(partition by Product order by Id) as Sales

from Sales1


select id,product,
Sum(Sales) over(partition by Product order by Id) as Sales

from Sales1


