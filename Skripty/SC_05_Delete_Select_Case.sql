select name, population from World 
where name like  "S%";

DELETE from World
where name = "Slovensko";

select name, population from World 
where name like  "S%";

select
	name,
	population,
	case
		when population < 100000 then "Mala"
		when population < 1000000 then "Stredna"
		when population < 10000000 then "Velka"
		else "Extra velka"
	end
from
	World;