Create Table Travel_Table(
Start_Location Varchar(30),
End_Location Varchar(30),
Distance int)

Insert into Travel_Table Values('Delhi','Pune',1400);
Insert into Travel_Table Values('Pune','Delhi',1400);
Insert into Travel_Table Values('Bangalore','Chennai',350);
Insert into Travel_Table Values('Mumbai','Ahmedabad',500);
Insert into Travel_Table Values('Chennai','Bangalore',350);
Insert into Travel_Table Values('Patna','Ranchi',300);
-------------------------------------------------------


select * from Travel_Table

select * from Travel_Table where Start_Location < End_Location
Union
select * from Travel_Table A where not exists 
(select 1 from Travel_Table B where A.Start_Location = B.End_Location)







