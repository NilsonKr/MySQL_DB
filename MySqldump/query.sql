/* Backup All the data in database */

sudo mysqldump DATABASENAME > dataBackup.sql


/* Backup Onlu the table schemas  */

sudo mysqldump -d DATABASENAME > dataBackup.sql
