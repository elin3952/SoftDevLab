SELECT * FROM store ORDER BY name;
SELECT * FROM store ORDER BY name DESC LIMIT 3;
select * from store where price > 1;
select 
    -> qty, price,
    -> qty * price as 'Total'
    -> FROM store
    -> ;
select sum(price*qty) from store;
select count(name) from store;
select * from course where department_id = 1;
select sum(count) from enrollment;
select distinct name from course;
select distinct name from department;
mysql> select department.name as department_name, course.name
    -> from course
    -> join department
    -> on department_id = department.id;
select concat(department.name, course.name) as course_name from course join department on department_id = department.id where department.name = "CSC";
select * , course.name as course_name from course join (department, enrollment) on (course.department_id = department.id AND course.id = enrollment.id);
