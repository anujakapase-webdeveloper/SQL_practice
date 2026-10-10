
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
