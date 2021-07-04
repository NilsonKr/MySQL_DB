/* Get operations of male clients which are finished which means 'sell' or 'returned' */

SELECT `type`, books.title as book_title, clients.name as client_name, authors.name as author_name
FROM operations 
JOIN books ON books.id = book_id
JOIN clients ON clients.client_id = operations.client_id
JOIN authors ON authors.id = books.author_id
WHERE clients.gender = 'M' AND operations.type IN ('sell', 'return');