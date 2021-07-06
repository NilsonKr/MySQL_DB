/* Quantity of Author's Books*/


SELECT authors.id, authors.name , COUNT(books.id) AS quantity
FROM authors
LEFT JOIN books ON  authors.id = books.author_id 
GROUP BY authors.id;


/* Quantity of Authors By Nationality */

SELECT  country, COUNT(authors.country) AS quantity
FROM authors
WHERE country IS NOT NULL /*AND country NOT IN ('usa')*/
GROUP BY country
ORDER BY quantity DESC, country;

/* Quantity of Books By Nationality */

SELECT country , COUNT(country) AS quantity
FROM books
JOIN authors ON books.author_id = authors.id
WHERE country IS NOT NULL
GROUP BY country
ORDER BY quantity DESC; 



/* Average And Standard deviation */

SELECT country, AVG(price) AS average, STDDEV(price) AS std_dev, COUNT(books.id) AS book_quantity
FROM books
JOIN authors ON books.author_id = authors.id
WHERE country IS NOT NUll
GROUP BY country
ORDER BY book_quantity DESC;


/* Min Max price of each Country */

SELECT country ,MIN(price), MAX(price), COUNT(books.id) AS books_quantity
FROM books
JOIN authors ON books.author_id = authors.id
WHERE country IS NOT NULL
GROUP BY country
ORDER BY books_quantity DESC;


/* Final report of transactions */

SELECT clients.name,  books.title, `type`, price, CONCAT(authors.name, "(",  authors.country, ")") AS author
FROM operations
JOIN clients  ON operations.client_id = clients.client_id
JOIN books ON operations.book_id = books.id
JOIN authors ON books.author_id = authors.id;

/* Days of life of  clients */

SELECT `name`, gender, FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthdate)) / 365) AS days_alive 
FROM clients
LIMIT 10;


