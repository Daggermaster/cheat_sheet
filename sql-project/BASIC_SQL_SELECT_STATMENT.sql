CREATE TABLE employees(
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department VARCHAR(50),
  salary DECIMAL(10,2)
);

INSERT INTO employees(first_name,last_name,department,salary) VALUES
('john','doe','sales',60000),
('jane','smith','marketing',65000),
('jim','brown','sales',55000),
('jake','white','IT',70000),
('jill','black','IT',72000),
('janet','green','HR',50000),
('james','blue','HR',52000),
('jack','yellow','marketing',67000),
('julia','purple','sales',63000),
('jerry','orange','marketing',62000);

#example show name

SELECT first_name,last_name
FROM employees;

#example show table

SELECT *
FROM employees;

#example show data without duplicate data

SELECT DISTINCT department
FROM employees;

#example show filtered name based on condition

SELECT first_name,last_name
FROM employees
WHERE department='sales';

#example show filtered name based on condition and logical operator

SELECT first_name,last_name
FROM employees
WHERE department = 'sales' and salary > 50000;

#example show data with sorting
SELECT first_name,last_name
FROM employees
ORDER BY salary DESC;

#example show data with limit record
SELECT first_name,last_name
FROM employees
Limit 5;

#example show data with aggregate function(count,max,mix,sum,average,.etc)
SELECT department, COUNT(*)
FROM employees
GROUP BY department;

#filtered data with having(similar to where but for group or categories)
SELECT department,COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
