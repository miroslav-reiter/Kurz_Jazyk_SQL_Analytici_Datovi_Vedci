
---*** Cvičenia Príručka SQL ***---
-- Vytvorenie databazy
CREATE DATABASE IF NOT EXISTS `Testovacia_DB` DEFAULT CHARACTER SET
utf8 COLLATE utf8_general_ci;

-- Výber všetkých dát/stĺpcov z tabuľky EMP
SELECT *
from EMP e; 

-- Výber s limit prvých 3 riadkov/záznamov so všetkými stĺpcami z tabuľky EMP
select * from EMP e 
limit 3;

-- Vzostupne zoradenie (A-Z) podľa mena (ENAME)
select * from EMP t order by ENAME ;

-- Nahodne zoradenie prvych 5 zaznamov
select ENAME, JOB 
from EMP e 
order by RAND() 
limit 5;

-- Viackriterialne zoradenie
select DEPTNO, sal, ENAME, JOB
from EMP e 
order by DEPTNO, sal desc;

-- Zoradenie podľa 3. stĺpca
select
	ENAME,
	sal,
	COMM
from
	EMP t
order by
	3;

SELECT CURRENT_TIMESTAMP(sal) > ''
from EMP e;

-- Filtrovanie, hladame zamestnancov, ktory sa volaju king
select ENAME,JOB,SAL from EMP where ENAME ='king';

-------------------------------
-- Agregácie a agregačné funkcie
select count(*) from EMP;

select count(*) from T100;

select count(distinct DNAME) from DEPT d ;

select DEPTNO,count(*)
    from DEPT t group by DEPTNO;


-------------------------------

SELECT distinct ENAME, SAL,
case
	when sal <= 2000 then 'Underpaid'
	when sal >= 4000 then 'Overpaid'
	ELSE 'OK'
end as status
from EMP e 
order by sal DESC;

-------------------------------

select
	CONCAT(ENAME, ' WORKS AS A ', JOB ) as msg,
	CONCAT_WS('-' ,ENAME, 'WORKS AS A', JOB ) as msg2
from
	EMP
WHERE
	DEPTNO = 10;
	
-------------------------------

select
	ENAME,
	HIREDATE,
	SAL
from
	EMP
where
	YEAR_MONTH (HIREDATE) = '1981-12';
	
-------------------------------
select ENAME, job from EMP e 
order by SUBSTR(job, LENGTH(job)-2, 2) ;

-------------------------------
select ENAME, job from EMP e 
order by SUBSTR(job, -2, 2) ;

-------------------------------
create view V as 
(select concat(ename, ' ', deptno) as data
from EMP e);

SELECT * from V;
-------------------------------
-- Premenovanie Tabulky

ALTER table Album RENAME TO Albumy;
alter table Genre RENAME to Zanre;
alter table EmpView Rename to ZamestnanciZoznam;

-- Joiny, Vnútorné spojenia
select e.EMPNO, e.ENAME, e.JOB, e.SAL, e.DEPTNO 
from EMP e
inner join Reiter2 v 
on e.ENAME = v.ename 
and e.JOB = v.job 
and e.SAL = v.sal ;
