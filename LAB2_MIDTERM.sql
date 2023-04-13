create database my_emp;

use my_emp;
create table emp_1 (
	emp_num char (3),
    emp_lname varchar (15),
    emp_fname varchar (15),
    emp_initial char (1),
    emp_hiredate date,
    job_code char (3)
    );
    
insert into emp_1 (emp_num, emp_lname,emp_fname, emp_initial, emp_hiredate, job_code)
values (001, 'blue', 'bobby', 'b', '2023-04-13', 500),
	   (002, 'brown', 'joe', 'p', '2023-04-12', 502),
       (003, 'green', 'andrei', 'o', '2023-04-14', 502),
       (004, 'white', 'ford', 'r', '2023-04-11', 501),
       (005, 'oro', 'kael', 'c', '2023-04-8', 502);

select * from emp_1 where job_code = 502;

