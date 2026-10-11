
DROP TABLE IF EXISTS employees;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);


INSERT INTO employees (emp_id, emp_name, department, salary, hire_date) VALUES 
(1, 'Aman Verma', 'IT', 68500.00, '2025-05-12'),
(2, 'Priya Sharma', 'HR', 51500.00, '2026-02-15'),
(3, 'Rahul Singh', 'Finance', 59500.00, '2024-11-20'),
(4, 'Neha Gupta', 'IT', 72000.00, '2026-01-10'),
(5, 'Amit Kumar', 'HR', 53000.00, '2025-08-05');


SELECT * FROM employees;

/*"emp_id","emp_name",  "department",   "salary",   "hire_date"
   1,       "Aman Verma",  "IT",        "68500.00",  "2025-05-12"
   2,       "Priya Sharma","HR",        "51500.00",  "2026-02-15"
   3,       "Rahul Singh", "Finance",   "59500.00",  "2024-11-20"
   4,       "Neha Gupta",  "IT",        "72000.00",  "2026-01-10"
   5,       "Amit Kumar",  "HR",        "53000.00",  "2025-08-05"*/

   
   select emp_name,salary from employees where salary >(select avg(salary) from employees) ;

   select emp_name,salary as max_salary from employees where salary = (select max(salary) from employees);

   select salary  as fifth_highest_salary from employees order by salary desc limit 1 offset 4;

   select  emp_name,salary from employees order by salary desc limit 5;

   select emp_name ,salary as min_salary from employees order by salary asc limit 3;

   select max(salary) as second_highest_slary from employees where salary < (select max(salary)from employees);

   alter table employees add column department_id int;
   
   select*from employees;

   update employees set department_id=101 where department="it";

   update employees set department_id=102 where department="hr";

   select*from employees;

   SELECT e.emp_name, e.department_id, e.salary
   FROM employees e
   WHERE e.salary > (
   SELECT AVG(salary) 
   FROM employees 
   WHERE department_id = e.department_id
); 