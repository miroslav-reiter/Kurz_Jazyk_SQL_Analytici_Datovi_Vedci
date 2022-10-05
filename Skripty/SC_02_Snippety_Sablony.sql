-- sf
select * from World;
SELECT * from Customers c ;
select * from Invoices;
SELECT * from EMP e;

-- sob
select * from EMP t order by ENAME;
	
-- swhere
select * from Album where title like "A%";

-- scount
select count(*) from Album;

-- scgb
select
	artist,
	count(*)
from
	Album t
group by
	artist
ORDER by count(*) DESC;

UPDATE World set name
