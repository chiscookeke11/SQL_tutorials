-- What is a NULL Value?
-- Definition: A field with a NULL value is essentially empty, indicating no data entry. This often occurs when a field is optional, and no value is provided during record creation or updating.
-- Key Distinction: NULL is different from zero (0) or a field containing spaces. While zero and spaces are actual values, NULL signifies that the field was left blank intentionally.



--  How to Test for NULL Values
-- Testing for NULL values requires specific operators because traditional comparison operators like =, <, or <> don't work with NULLs. Instead, use the following operators:

-- IS NULL: Checks if a field is NULL.
-- IS NOT NULL: Checks if a field contains any value other than NULL





-- IS NULL Syntax
-- To retrieve records where a specific column has a NULL value, use this query:

SELECT column_names
FROM table_name
WHERE column_name is NULL



-- IS NOT NULL Syntax
-- To find records where a column has any value other than NULL, use this query:

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;



