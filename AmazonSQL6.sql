--Table Creation
--Same table from Amazon SQL 5
--1st Question

select A.order_day,B.product_id,A.Sold_Amount 
from
(select Order_day,MAX(Quantity * Price) as Sold_Amount from order_tbl
group by order_day) A

inner join 
(select order_day , product_id , quantity * price as Sold_amount from order_tbl) B
on A.order_day = B.order_day and A.Sold_Amount = B.Sold_amount

-------2nd Question
select product_id,
sum(Isnull(Sales01,0)) as Total_Sales_01,
sum(Isnull(Sales02,0)) as Total_Sales_02
from
(select product_id,
case when order_day = '2015-05-01' then total_sales end as Sales01,
case when order_day = '2015-05-02' then total_sales end as Sales02
from 
(select order_day,product_id, sum(quantity * price) as total_sales from order_tbl
group by product_id,order_day) A)B
group by product_id

--------------3rd Question

select order_day,product_id
from order_tbl
group by product_id,order_day
having count(*) > 1