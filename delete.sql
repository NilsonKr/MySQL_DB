/*Eliminate Registers or tables */


DELETE FROM clients WHERE clients.client_id IN (1,5,87,23)


/*Clear out all the table register*/
TRUNCATE operations