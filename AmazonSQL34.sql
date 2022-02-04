create table OrderStatus
(
Quote_Id varchar(5),
Order_Id varchar(5),
Order_Status Varchar(20)
)

Insert into OrderStatus Values ('A','A1','Delivered') 
Insert into OrderStatus Values ('A','A2','Delivered') 
Insert into OrderStatus Values ('A','A3','Delivered') 
Insert into OrderStatus Values ('B','B1','Submitted') 
Insert into OrderStatus Values ('B','B2','Delivered') 
Insert into OrderStatus Values ('B','B3','Created') 
Insert into OrderStatus Values ('C','C1','Submitted') 
Insert into OrderStatus Values ('C','C2','Created') 
Insert into OrderStatus Values ('C','C3','Submitted') 
Insert into OrderStatus Values ('D','D1','Created') 
-----------------------------------------------------------------------

select * from OrderStatus











