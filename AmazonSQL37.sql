Create Table SalesInfo(
Continents varchar(30),
Country varchar(30),
Sales Bigint
)

Insert into SalesInfo Values('Asia','India',50000)
Insert into SalesInfo Values('Asia','India',70000)
Insert into SalesInfo Values('Asia','India',60000)
Insert into SalesInfo Values('Asia','Japan',10000)
Insert into SalesInfo Values('Asia','Japan',20000)
Insert into SalesInfo Values('Asia','Japan',40000)
Insert into SalesInfo Values('Asia','Thailand',20000)
Insert into SalesInfo Values('Asia','Thailand',30000)
Insert into SalesInfo Values('Asia','Thailand',40000)
Insert into SalesInfo Values('Europe','Denmark',40000)
Insert into SalesInfo Values('Europe','Denmark',60000)
Insert into SalesInfo Values('Europe','Denmark',10000)
Insert into SalesInfo Values('Europe','France',60000)
Insert into SalesInfo Values('Europe','France',30000)
Insert into SalesInfo Values('Europe','France',40000)
---------------------------------------

select * from SalesInfo

with cte_sales as
(
select continents,country,sum(sales) as total 
from SalesInfo
group by Continents,Country
),

cte_rank as
(
select continents,country,total,
rank() over(partition by continents order by total desc) as rnk from cte_sales)

select continents,country,total from cte_rank
where rnk =1
