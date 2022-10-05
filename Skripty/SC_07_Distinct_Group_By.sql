select sum(population) as Obyvatelia_Europy
from World
where continent = "Europe";

select count(*), count(population), count(name), count(capital), count(gdp)
from World;
-- where continent = "Europe";


select sum(population), avg(population), max(population), min(population), count(population)
from World;

/*
2. List of continents
List all the continents - just once each.
*/

select count(distinct continent) 
from World
order by continent;

/*
2. List of continents
List all the continents - just once each.
*/

/* select distinct continent 
from World
order by continent;
*/

select continent 
from World
group by continent;

/*
3. GDP of Africa
Give the total GDP of Africa
*/

select sum(gdp) 'GDP Afriky'
from World
where continent = "Africa";

/*
4. Count the big countries
How many countries have an area of at least 1000000
*/

select count(name)
from World
where area >= 1000000;

select sum(population)
from World
where name in ('Estonia', 'Latvia', 'Lithuania');

/* 
6.Counting the countries of each continent
For each continent show the continent and number of countries.
*/
select continent, count(name)
from World
group by continent
order by count(name) DESC;

select continent, count(name)
from World
where population >= 10000000
group by continent
order by count(name) DESC;