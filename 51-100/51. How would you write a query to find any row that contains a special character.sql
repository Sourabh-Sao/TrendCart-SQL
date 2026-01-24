-- How would you write a query to find any row that contains a special character (anything that is NOT a letter or a number)?
SELECT name
FROM categories
-- [^ ... ] means "anything NOT in this list"
WHERE name REGEXP '[^a-zA-Z0-9]';
