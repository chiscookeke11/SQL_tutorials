-- question   1
SELECT payment_date, SUM(amount) As total_amount
FROM payments
GROUP By payment_date
ORDER By payment_date DESC
LIMIT 5;




-- question 2
SELECT customer_name, country, AVG(credit_limit) AS average_credit_limit
From customers
GROUP BY customer_name, country




-- question 3
SELECT product_code, SUM(quantity_ordered) AS total_quantity, SUM(quantity_ordered * price_each) as total_price
FROM order_details
GROUP BY product_code, quantity_ordered




-- question 4
SELECT check_number, MAX(amount) AS highest_amount
FROM payments
GROUP BY check_number;

