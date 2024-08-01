--Filtering:---  where clause


--select * from sales.customers where zip_code='12010'
--select * from sales.customers where zip_code!='12010' order by customer_id

--select * from production.stocks where quantity>=20 order by quantity;
--select * from production.stocks where quantity<=20 and product_id>100 and quantity>0 order by quantity

--select state, first_name from sales.customers where state='CA' or state!='NY'

--finding  unique combinartion sate  in  table
--select distinct state from sales.customers


--multiple condition it returns with 2 condtions als-
--select state, first_name,city from sales.customers where city='Apple Valley' or (state='CA' or state!='NY') 

/* in and not in 
select state, first_name,city from sales.customers where state in ('CA','NY');
select state, first_name,city from sales.customers where state not in ('CA','NY') */

--check in for not null cases and null cases
--select * from sales.customers where phone is not null;
--select * from sales.customers where phone is null


--select * from sales.customers where first_name like 'D%';
--select * from sales.customers where first_name like '%ck';
--check if st comes in anywhere
--select * from sales.customers where first_name like '%st%'
--casse sensituive search
--select * from sales.customers where first_name like '%St%'
--position search after 4 values
--select * from sales.customers where first_name like '____St%'
--string only of 6 char and ending in st
--select * from sales.customers where first_name like '____St'
--satrt with er and end with st
--select * from sales.customers where first_name like 'Er__St'


--select distinct model_year from production.products
--select * from production.products where model_year between 2016 and 2019


--Aggregation and filtering :group by and having clause
--grouping

--select count(*) from production.products;
--select count(*) from sales.customers where phone is not null;
--slect phone numer without null vlues
--select count(phone),count(*) from sales.customers

--select count(model_year) ,count(distinct model_year) from production.products
--select model_year,count(*) "total_product",max(list_price) "maximum price",min(list_price), avg(list_price) "avgpirce" from production.products group by model_year

--we cant use where in groupby clause and having clause we cant use alias name in this alias name is noofproducts etc
/*select model_year,count(model_year) "noofproducts",sum(list_price) "total price" from production.products 
group by model_year having count(model_year) >50

select product_name,model_year,list_price, avg(list_price) over (partition by model_year) as "avgprice",
list_price-avg(list_price) over (partition by model_year) as "difference" from production.products where  model_year > 2016

--select 1st five rows
--select top(10) * from production.products order by model_year desc
--select top 20 percent * from production.products
 

--selection of items from a newly created subtable
select Subtable.* from (select product_name, model_year,category_id ,list_price from production.products where model_year =2016) 
as "Subtable" where Subtable.category_id=3


---formating the values
--select format(8999639478,'###-###-###')

--converting vlue to rups indina format and list price to float
--select list_price,format(list_price,N'f'),format(list_price,N'C',N'en-In') from production.products

--select format(GetDate(),'yyyy-MMM-dd')

--select * from production.categories 

select upper(category_name),left(category_name,5),len(category_name),right(category_name,5)
from production.categories

 
update production.categories set category_name=' '+category_name+' ' from production.categories


select trim(category_name),left(category_name,5),len(category_name),right(category_name,5)
from production.categories


update production.categories set category_name=trim(category_name) from production.categories


select current_timestamp ,Getdate()
select YEAR(getdate()),month(getdate()),day(getdate())

-- year can changed froma ddding 2 years after and before simlarty for month week day sec min etc
select dateadd(year,2,getdate()) "2years after cuurent date",dateadd(year,-2,getdate()) "2years before cuurent date"

select * from dbo.emp

if datatype of date is change then we need tpo format
select hiredate, datediff(Year,hiredate,getdate()) from emp


take client date time use sysydate
select isdate('2021-12-23'),SYSDATETIME(),getdate()

*/