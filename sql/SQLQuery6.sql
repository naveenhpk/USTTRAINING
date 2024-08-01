select * from emp
select sal,comm,round(sal,0) from emp

--absolute if neagtive convert to posetive 
select list_price,round(list_price,1),CEILING(list_price),FLOOR(list_price),ABS(-10) from production.products

select rand()*10+1

select * from emp 


select iif(comm >0.00 ,'Commision Recived','No commision') as Result,
iif(comm>0.00,sal+comm,sal) as Total_salary from emp


---if null value replacing
select sal,isnull(comm,0.00)from emp

select USER_NAME()
select SYSTEM_USER