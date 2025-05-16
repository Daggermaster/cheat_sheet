#aggregate function

#sum() function
SELECT SUM(salary) FROM employees;

#avg() function for average
SELECT AVG(salary) FROM employees;

#max() function for maximum
SELECT E_NAME, MAX(SALARY) FROM employees

#MIN() function for minimum
SELECT MIN(SALARY) FROM employees;

#count function for counting row in database
SELECT COUNT(*) FROM employees;
SELECT COUNT(department) FROM employees WHERE SALARY > 30000;

#having function to filtered VALUES
SELECT column1,column2
FROM table_name
WHERE [condition]
GROUP BY column1
HAVING [condition]
ORDER BY column1;
