-- Task 1
SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM
    employees As e
    INNER JOIN offices AS o
    On e.officeCode = o.officeCode;




-- Task 2
SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM
    products AS p
    LEFT JOIN productslines AS pl
    ON p.productline = pl.productline






-- task 3
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
