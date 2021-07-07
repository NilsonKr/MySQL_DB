/*Show Quantity of books of each country in certain time lapse*/

SELECT country,COUNT(books.id), 
  SUM(if(`year` < 1950, 1, 0)) AS '<1950',
  SUM(if(`year` > 1950 AND `year` < 1990, 1, 0)) AS '<1990',
  SUM(if(`year` > 1990 AND `year` < 2000, 1, 0)) AS '<2000',
  SUM(if(`year` > 2000 , 1, 0)) AS '<Now'
FROM books
  JOIN authors ON books.author_id = authors.id
WHERE authors.country IS NOT NULL
GROUP BY country;


