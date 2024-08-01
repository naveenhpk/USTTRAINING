select * from Customers1


select sum(salary) tot_cus_sal  from customers1

select max(PurchaseTotal) max_totalpurchase from customers1

select min(PurchaseTotal) min_totalpurchase from customers1

alter table customers1 alter column  salary int
SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customers1' AND COLUMN_NAME = 'Salary';

select firstname +' ' + lastname fullname from customers1

select substring(firstname,1,3) + ' ' + substring(lastname,1,2) as splitted from customers1