PRIMARY key

#1 single column primary KEY
CREATE TABLE employees(
  employee_id INT PRIMARY KEY,
  name VARCHAR(50),
  position VARCHAR(50)
);

#2  composite primary key
CREATE TABLE orders(
  OrderID INT,
  product_id INT,
  PRIMARY KEY (OrderID, product_id)
);

#ADDING FROM EXISTING table
ALTER TABLE students
ADD CONSTRAINT pk_student_id PRIMARY KEY (student_id);
