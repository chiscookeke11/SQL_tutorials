-- Wildcards (%) for Flexible Searching
-- Wildcards are your secret weapon for finding records with variations in wording. Here's how to use them


SELECT * FROM records
WHERE description LIKE '%keyword%';

-- This query retrieves all records where the description contains a "keyword" anywhere in the text. The % symbol acts as a wildcard, matching any characters before or after the "keyword." Perfect for capturing variations and synonyms!



SELECT * FROM TRANSACTION
WHERE amount > 100;



-- filtering event by date range
SELECT * FROM events
WHERE event_date
BETWEEN '2023-01-01' AND '2023-12-31'



-- Combine wildcards and comparison operators for advanced filtering:
SELECT * FROM products
WHERE name
LIKE '%pro%' AND price >= 50;



