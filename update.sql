/* Update client status */

SELECT *
FROM clients
WHERE `name` LIKE '%lopez%'; 

UPDATE clients
SET active = 0
WHERE clients.name LIKE '%lopez%';


SELECT * 
FROM clients
WHERE active <> 1;