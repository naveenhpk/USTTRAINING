select * from worker
-- Write a query to display all the first_name  in upper case
select upper(FIRST_NAME) FIRST_NAME FROM WORKER

-- Write a querty to display unique department from workers table
SELECT DISTINCT(DEPARTMENT) DEPARTMENT FROM WORKER

-- Write an SQL query to print the first three characters of FIRST_NAME from Worker table
SELECT SUBSTRING(FIRST_NAME,0,4) FROM WORKER
-- Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
--SELECT CHARINDEX('a',FIRST_NAME) from worker where first_name='Amitabh'
select PATINDEX('%a%',first_name) from worker where first_name='Amitabh'

-- Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length
select distinct(department),len(department) UN_Department from Worker

-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending
select * FROM WORKER order by first_name asc,department desc

-- Write a query to get workers whose name are Vipul and Satish
select * from worker where first_name in('vipul','satish')

-- Write an SQL query to print details of the Workers whose FIRST_NAME contains 'a'
select * from worker where first_name like '%a%'

-- Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets
select * from worker where first_name like '%h' and len(first_name)=6
select * from worker where first_name like '_____h'


-- Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000
select * from worker where salary between 100000 and 500000


-- Write an SQL query to print details of the Workers who have joined in Feb’2014
select * from worker  where joining_date like '2024-02%'
select * from worker  where joining_date=YEAR(2024) and joining_date=MONTH(02)


-- Write an SQL query to fetch the count of employees working in the department ‘Admin’
select count(worker_id) count_of_worker from worker where department='Admin'


-- Write an SQL query to fetch the no. of workers for each department in the descending order
select distinct(department),count(worker_id) counts_of_worker from worker group by department

-- Write a query to display workerrs who are managers
select * from Title
select w.first_name firstname,t.WORKER_TITLE Title from worker w  inner join title t on w.worker_id=t.worker_ref_id where t.worker_title='Manager'

-- Write query to find duplicate rows title table
select WORKER_TITLE, count(WORKER_TITLE) duplicate from title group by WORKER_TITLE having count(WORKER_TITLE)>1

-- Write an SQL query to show all workers who got the bonus along with bonus amount
--SELECT * FROM BONUS
--SELECT * FROM WORKER
select first_name from worker where worker_id in (select worker_ref_id from bonus)

-- Write a query to find employees in worker table that do not exist in bonus table (ie did not get bonus)
SELECT w.FIRST_NAME, w.LAST_NAME FROM Worker w
LEFT JOIN Bonus b ON w.WORKER_ID = b.WORKER_REF_ID WHERE b.WORKER_REF_ID IS NULL;


-- Write a query to find the highest 2 salaries
select * from worker where salary in (select distinct top(2) salary from worker order by salary desc)

-- Find 2nd highest without using TOP or LIMIT
select max(salary) from worker where salary not in (select max(salary) from worker)

-- Find people who have the same salary
select * from worker where salary in (select salary from worker group by salary having count(salary)>1)
   
-- Write a query to fetch 1st 50% records without using Top
-select * from worker where worker_id=count(*)/2

-- Write a query to select a department with more than 3 people in worker table
select department,count(first_name) from worker  group by department having count(first_name)>3

-- Write a query to select 1st and last row of a worker table
select * from worker where worker_id=1 or worker_id=(select top(1) worker_id from worker order by worker_id desc)

-- Write a query to select last 5 entries from worker table
-select top(5) * from  worker order by worker_id desc

-- Write a query to select people with highest salary in each group
select first_name,department,salary from worker where department in (select distinct(department) from worker) and
salary in (select max(salary) from worker group by department)

-- Write a query to fetch departments along with the total salaries paid for each of them
SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM Worker GROUP BY DEPARTMENT;

-- Write a query to fetch the names of workers who earn the highest salary
SELECT FIRST_NAME, LAST_NAME FROM Worker
WHERE SALARY = (SELECT MAX(SALARY) FROM Worker);

