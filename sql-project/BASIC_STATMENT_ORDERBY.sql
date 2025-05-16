#sorting data
SELECT * FROM employees ORDER BY name;

#sorting data descending or ascending
SELECT * FROM employees ORDER BY name DESC;
SELECT * FROM employees ORDER BY name ASC;

#sorting data by multiple column
SELECT * FROM employees ORDER BY name,salary;

#sorting data with null(0) VALUES
SELECT * FROM employees ORDER BY salary NULLS LAST;
SELECT * FROM employees ORDER BY salary NULLS FIRST;

#sorting with aggregate function
SELECT product, SUM(TotalSales) AS Total FROM sales GROUP BY product  ORDER BY Total DESC;

#limit number of row that showed up with order by function
SELECT * FROM employees ORDER BY salary DESC LIMIT 10;

#sorting by case sensitive
SELECT * FROM Names ORDER BY Name COLLATE utf8_bin;

#sorting data by custom criteria
SELECT *
FROM students
ORDER BY
CASE grade
    WHEN 'A' THEN 1
    WHEN 'B' THEN 2
    WHEN 'C' THEN 3
    ELSE 4
END
grade DESC;

#sorting data by datetime
SELECT * orders ORDER BY orderdate;

#sorting data by string length
SELECT * FROM words ORDER BY LENGTH(word);

#combine clause order by with WHERE
SELECT* FROM employees WHERE salary > 5000 ORDER BY salary DESC;

#combine clause order by with group by
SELECT product, SUM(TotalSales) AS Total FROM sales GROUP BY product ORDER BY total DESC;

#combine clause order by with join
SELECT
  orders.OrderID,
  customers.CustomerName
FROM
  orders
JOIN
  customers ON Orders.customerID = customers.customerID
ORDER BY
  customers.CustomerName;
