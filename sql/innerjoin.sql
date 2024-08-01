-------RIGHT JOIN---------
select ename,dname from emp e right join dept d on e.deptno=d.deptno
----FULL JOIN-----
select e.*,d.* from dept d full join emp e on e.deptno = d.deptno

---CRIOSS JOIN----- FRO EACH ENAME ALL DEPT ARE CROSS JOINED 
SELECT e.*,d.* from dept d CROSS JOIN EMP E

------------SELF.JOIN

SELECT C1.CITY,C1.first_name + ' ' + C1.LAST_NAME AS CUSTOMER1,
C2.first_name + ' ' + C2.LAST_NAME AS CUSTOMER2
FROM SALES.CUSTOMERS C1 INNER JOIN SALES.CUSTOMERS C2
ON C1.CUSTOMER_ID>C2.CUSTOMER_ID AND C1.CITY =C2.CITY 
ORDER BY C1.CITY  

 
--self.join to find the manager for employees 
select * from emp
select e.ename employee ,m.ename manager from  emp e inner join emp m on m.empno=e.mgr order by m.ename