/*
1. NULL, INNER JOIN, LEFT JOIN, RIGHT JOIN
List the teachers who have NULL for their department.
*/

select name from Teacher_csv tc 
where dept is  NULL; 

/*
2. Note the INNER JOIN misses the teachers with 
no department and the departments with no teacher.
*/

select Teacher_csv.name, Dept_csv.name from Teacher_csv
inner join Dept_csv 
on (Teacher_csv.dept = Dept_csv.id);

select Teacher_csv.name, Dept_csv.name from Teacher_csv, Dept_csv 
where (Teacher_csv.dept = Dept_csv.id);

/*
 * 
 * 3. Use a different JOIN so that all teachers are listed.
*/

select Teacher_csv.name, Dept_csv.name from Teacher_csv
left join Dept_csv 
on (Teacher_csv.dept = Dept_csv.id);


select Dept_csv.name, Teacher_csv.name  from Dept_csv 
right join  Teacher_csv
on (Dept_csv.id = Teacher_csv.dept);

/*
5. Use COALESCE to print the mobile number. Use the number '07986 444 2266' if there is no number given. Show teacher name and mobile number or '07986 444 2266'
*/

select trim(Teacher_csv.name) name, COALESCE(mobile, "07986 444 2266") "mobile"
from Teacher_csv; 

/*
6. Use the COALESCE function and a LEFT JOIN to print the teacher name and department name. Use the string 'None' where there is no department.
*/

select Teacher_csv.name, COALESCE(Dept_csv.name, "None") "Dept" from Teacher_csv 
left join Dept_csv
on (Teacher_csv.dept = Dept_csv.id);

/*
7. Use COUNT to show the number of teachers and the number of mobile phones.
*/
select count(Teacher_csv.name) name, count(Teacher_csv.mobile) mobile
from Teacher_csv

