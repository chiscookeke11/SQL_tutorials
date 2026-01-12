-- task 1
SELECT checkNumber, paymentDate, amount
FROM Payments

-- task 2
SELECT orderDate, requiredDate, status
FROM orders
WHERE In_Process  = true
ORDER BY orderDate = DESC

-- task 3
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = "Sales Rep"/^#\sname\:\s[\w\s]+,\sage\:\s\d+\s?$/
ORDER BY employeeNumber = DESC


-- Task 4
SELECT *
FROM offices


-- task 5
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5