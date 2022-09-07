drop table emp;
drop table dept;
drop table salgrade;
select * from EMP;

TRUNCATE TABLE users;
DELETE FROM users; 

create database assign;
CREATE TABLE EMP
       (EMPNO int NOT NULL,
        ENAME VARCHAR(20),
        JOB VARCHAR(15),
        MGR int,
        HIREDATE DATE,
        SAL double,
        COMM double(7, 2),
        DEPTNO int(2));

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        '1980-12-17',  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        '1981-02-20', 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        '1981-02-22', 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        '1981-04-02',  2975, 400, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        '1981-09-28', 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        '1981-05-01',  2850, 650, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        '1981-01-09',  2450, 120, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        '1982-12-09', 3000, 340, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        '1981-11-17', 5000, 175, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        '1981-09-08',  1500, 450, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        '1983-01-12', 1100, 225, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        '1981-12-03',   950, 265, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        '1981-12-03',  3000, 150, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        '1982-01-23', 1300, 100, 10);

CREATE TABLE DEPT
       (DEPTNO int(2),
        DNAME VARCHAR(15),
        LOC VARCHAR(13) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE SALGRADE
        (GRADE int,
         LOSAL int ,
         HISAL int);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);

COMMIT;

alter table emp add constraint emp_pk primary key (empno);
alter table dept add constraint dept_pk primary key (deptno);
alter table emp add constraint emp_fk foreign key (deptno) references dept (deptno);

select * from EMP;
select * from DEPT;
select * from SALGRADE;
