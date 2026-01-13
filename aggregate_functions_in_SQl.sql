-- The `AVG()` function calculates the average of a set of values. Example:

SELECT AVG(price)
FROM items;


-- The `COUNT()` function returns the number of entries in a set. Example:
SELECT COUNT(*)
FROM orders


-- The `SUM()` function returns the total sum of values. Example:
SELECT SUM(quantity)
FROM sales;


-- `MAX()` returns the highest value, while `MIN()` returns the lowest. Examples:
SELECT MAX(score)
FROM results;
SELECT MIN(score)
FROM results;

-- The `GROUP BY` clause groups rows based on column values, allowing you to perform aggregate functions on each group:
SELECT category, AVG(price)
FROM products
GROUP BY category;

