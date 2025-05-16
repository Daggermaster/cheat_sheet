#basic where statment
SELECT * FROM employees
WHERE department = 'sales';

#where statment with condition
SELECT * FROM employees
WHERE department = 'sales' AND salary > 50000;

SELECT * FROM employees
WHERE department = 'sales' OR department = 'marketing';

#where statment with wildcard
SELECT * FROM customers
WHERE name LIKE 'A&'; #start name with A

#WHERE statment with null VALUES
SELECT * FROM employees
WHERE department_id IS NULL;

#where with order evaluation
SELECT * FROM employees
WHERE department = 'sales' OR department = 'marketing' AND salary > 50000;

SELECT * FROM employees
WHERE department = 'sales' OR (department = 'marketing' AND salary > 50000);

#use cast and convert to explicitly change data types when necessary
SELECT * FROM employees WHERE salary = CAST ('50000' AS DECIMAL);

#TRY CATCH BLOCK TO HANDLE Error
BEGIN TRY
  SELECT * FROM employees WHERE department_id = 10;
END try
BEGIN CATCH
  SELECT ERROR_MESSAGE() AS ERROR_MESSAGE;
END CATCH;

#using transaction control to add rollback feature
BEGIN TRANSACTION;
BEGIN TRY
  DELETE FROM employee_id = 1;
  COMMIT;
END TRY
BEGIN CATCH
  ROLLBACK;
END CATCH;
