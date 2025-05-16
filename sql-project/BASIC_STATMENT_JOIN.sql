#inner join(shared between 2 side)
SELECT * FROM BOYS INNER JOIN MESSI
ON BOYS.id = MESSI.id

#right join (inner join + outer right side)
SELECT *FROM BOYS RIGHT JOIN MESSI
ON BOYS.id = MESSI.id

#left JOIN(inner join + outer left side)
SELECT * FROM BOYS LEFT JOIN MESSI
ON BOYS.id = MESSI.id

#full join(combine inner & outer join)
SELECT * FROM BOYS FULL OUTER JOIN MESSI
ON BOYS.id = MESSI.id

#natural join( column who have same values)
SELECT * FROM customers NATURAL JOIN orders;
