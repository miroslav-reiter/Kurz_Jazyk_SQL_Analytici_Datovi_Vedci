select name, population from World 
where name = "Slovakia";

UPDATE World set name = "Slovensko"
where name = "Slovakia";

select name, population from World 
where name like  "S%";

