select * from Customers1

--Converting all names to uppercase using UPPER function
select customerid,UPPER(firstname) Firstname,UPPER(lastname) Lastname from customers1

--Converting all names to lower using lower function
select customerid,Lower(firstname) Firstname,lower(lastname) Lastname from customers1

--substring function

select Firstname,SUBSTRING(firstname ,1,2) Substr from customers1

--Date Functions: Apply YEAR, MONTH, or DAY functions to extract specific date components for further analysis.

select customerid ,joindate,year(joindate) Join_Year,MONTH(joindate) Join_Month,Day(joindate) Join_day from customers1

--Aggregate Functions (COUNT & COUNT DISTINCT): Calculate the total number of records and the number of distinct values in a specific column.

--count function 

select count(*) TotalNoCustomers from customers1

--count distinct

select discount(*) from customers1

select * from sales.order_items