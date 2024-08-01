------------join --------------
----it is extracting data from 2 or more tables base on the common key
---there are 3 join 
-- inner ,outer and cross join

--1st tablle
select* from production.products ---prodid prdname brandid categid modelyr list price
select * from production.categories --ctaegryid ctagry name

--selectio based on the common id inner join which removes the items thst is not in the products table but in categories and list > 500
select product_name,list_price from production.products p inner join production.categories c on p.category_id=c.category_id
where list_price > 500 order by product_name

select product_name,list_price,c.category_name,b.brand_name from production.products p
inner join production.categories c on c.category_id=p.category_id
inner join production.brands b on b.brand_id=p.brand_id
where list_price > 500 order by product_name


----left out join
--product wisse report which all product have not recived the order 

select product_name ,order_id  from production.products p 
left join sales.order_items o on o.product_id=p.product_id
where order_id is null order by order_id 

--all the orderes whose has not even put in the orders table
select product_name ,ord.order_id,order_date  from production.products p 
left join sales.order_items o on o.product_id=p.product_id
left join sales.orders ord on ord.order_id=o.order_id and ord.order_id=100
order by ord.order_id 

