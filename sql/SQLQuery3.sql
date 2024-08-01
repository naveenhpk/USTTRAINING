DROP TABLE IF EXISTS dept;
DROP TABLE IF EXISTS salgrade;
DROP TABLE IF EXISTS emp;

CREATE TABLE salgrade (
    grade INT NOT NULL PRIMARY KEY,
    losal DECIMAL(10,2),
    hisal DECIMAL(10,2)
);

CREATE TABLE dept (
    deptno INT NOT NULL PRIMARY KEY,
    dname VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL
);

CREATE TABLE emp (
    empno INT NOT NULL PRIMARY KEY,
    ename VARCHAR(50) NOT NULL,
    job VARCHAR(50) NOT NULL,
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT NOT NULL
);

INSERT INTO dept VALUES (10, 'Accounting', 'New York');
INSERT INTO dept VALUES (20, 'Research', 'Dallas');
INSERT INTO dept VALUES (30, 'Sales', 'Chicago');
INSERT INTO dept VALUES (40, 'Operations', 'Boston');

INSERT INTO emp VALUES (7369, 'SMITH', 'CLERK', 7902, '1993-06-13', 800, 0.00, 20);
INSERT INTO emp VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1998-08-15', 1600, 300, 30);
INSERT INTO emp VALUES (7521, 'WARD', 'SALESMAN', 7698, '1996-03-26', 1250, 500, 30);
INSERT INTO emp VALUES (7566, 'JONES', 'MANAGER', 7839, '1995-10-31', 2975, NULL, 20);
INSERT INTO emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1992-06-11', 2850, NULL, 30);
INSERT INTO emp VALUES (7782, 'CLARK', 'MANAGER', 7839, '1993-05-14', 2450, NULL, 10);
INSERT INTO emp VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1996-03-05', 3000, NULL, 20);
INSERT INTO emp VALUES (7839, 'KING', 'PRESIDENT', NULL, '1990-06-09', 5000, 0, 10);
INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1995-06-04', 1500, 0, 30);
INSERT INTO emp VALUES (7876, 'ADAMS', 'CLERK', 7788, '1999-06-04', 1100, NULL, 20);
INSERT INTO emp VALUES (7900, 'JAMES', 'CLERK', 7698, '2000-06-23', 950, NULL, 30);
INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK', 7782, '2000-01-21', 1300, NULL, 10);
INSERT INTO emp VALUES (7902, 'FORD', 'ANALYST', 7566, '1997-12-05', 3000, NULL, 20);
INSERT INTO emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1998-12-05', 1250, 1400, 30);

INSERT INTO salgrade VALUES (1, 700, 1200);
INSERT INTO salgrade VALUES (2, 1201, 1400);
INSERT INTO salgrade VALUES (3, 1401, 2000);
INSERT INTO salgrade VALUES (4, 2001, 3000);
INSERT INTO salgrade VALUES (5, 3001, 99999);
