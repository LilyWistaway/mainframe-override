-- 1) Find forum posts from April 2048
SELECT id, author, date, title
FROM forum_posts
WHERE date >= '2048-04-01'
  AND date <  '2048-05-01';

-- 2) Identify the different post and inspect content
SELECT author, content
FROM forum_posts
WHERE id = nbZY_;

-- 3) Get the author's real name
-- Replace POST_ID and AUTHOR_username with actual values obtained from previous queries.
SELECT first_name, last_name
FROM forum_accounts
WHERE username = 'smart-money-44';

-- 4) Find other forum accounts with the same last name
SELECT username, first_name, last_name
FROM forum_accounts
WHERE last_name = 'Steele';

-- 5) Find EmptyStack employee accounts with that last name
SELECT username, first_name, last_name
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- 6) Find EmptyStack employee login credentials for the Steele that has both a forum and emptystack account
SELECT username, password
FROM emptystack_accounts
WHERE username = 'triple-cart-38';

-- 7) Quit and run node to log in using the user and password for triple-cart-38
-- 8) Initiate psql again and load emptystack.sql

-- 9) Find taxi message records
SELECT id, "from", subject, body
FROM emptystack_messages
WHERE subject LIKE '%taxi%'
OR subject LIKE '%Taxi%'
OR subject LIKE '%TAXI%';

-- 10) Get the password of the related account
SELECT password
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- 11) Get Project ID
SELECT id
FROM emptystack_projects
WHERE code LIKE '%TAXI$';

-- 12) Log into mainframe and run node mainframe -stop with the obtained password and project ID