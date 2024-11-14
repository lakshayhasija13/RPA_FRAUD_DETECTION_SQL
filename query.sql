-- 1
-- What are the column names?
SELECT *
FROM transaction_data
LIMIT 10;


-- 2
-- Find the full_names and emails
-- of the transactions listing 20252 as the zip code.
SELECT full_name, email, zip
FROM transaction_data
WHERE zip = 20252;

-- 3
-- Use a query to find the names 
-- and emails associated with these transactions.
SELECT full_name, email
FROM transaction_data
WHERE full_name = 'Art Vandelay'
   OR full_name LIKE '% der %';

-- 4
-- Find the ip_addresses and emails listed with these transactions.
SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

-- 5
-- Find the emails in transaction_data with
-- ‘temp_email.com’ as a domain.
SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';

-- 6
-- The finance department is looking for a specific transaction. 
-- They know that the transaction occurred from an ip address starting 
-- with ‘120.’ and their full name starts with ‘John’.

-- Can you find the transaction?
SELECT *
FROM transaction_data
WHERE ip_address LIKE '120.%' 
AND full_name LIKE 'John%';
