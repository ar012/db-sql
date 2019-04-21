-- To find list of all databases:

SELECT datname FROM pg_database
WHERE datistemplate = false;

-- To find all tables in the current database
SELECT table_schema,table_name
FROM information_schema.tables
ORDER BY table_schema,table_name;



-- psql - save results of command to a file
postgres@ws33:~$ psql CTrendsEBS;

postgres=# \c CTrendsEBS;
psql (11.1 (Ubuntu 11.1-1.pgdg18.04+1), server 10.6 (Ubuntu 10.6-1.pgdg18.04+1))
You are now connected to database "CTrendsEBS" as user "postgres".
CTrendsEBS=# 


db=>\o out.txt
db=>\dt
db=>\q


--How to find a table having a specific column in postgresql

select c.relname
from pg_class as c
    inner join pg_attribute as a on a.attrelid = c.oid
where a.attname = <column name> and c.relkind = 'r'


--For example
select c.relname
from pg_class as c
    inner join pg_attribute as a on a.attrelid = c.oid
where a.attname = 'company_code' and c.relkind = 'r'



 select table_name from information_schema.columns where column_name = 'your_column_name'


--How to write a query to find all tables in a db that have a specific column name
----------------------------------------------------------------------------------
SELECT table_name FROM information_schema.columns WHERE column_name = 'company_code';

SELECT table_name FROM information_schema.columns WHERE column_name != 'company_code';


--How to write a query to find all tables in a db that have a specific column name
----------------------------------------------------------------------------------

SELECT table_catalog, table_schema, table_name, column_name
FROM INFORMATION_SCHEMA.columns
WHERE column_name = '<your column name>';

SELECT table_catalog, table_schema, table_name, column_name
FROM INFORMATION_SCHEMA.columns
WHERE column_name = 'company_code';




--How many tables in a database?
--------------------------------
SELECT count(*) FROM information_schema.tables WHERE table_schema NOT IN ('information_schema', 'pg_catalog');

select count(*)
from information_schema.tables;

Or if you want to find the number of tables only for a specific schema:

select count(*)
from information_schema.tables
where table_schema = 'public';


--psql - save results of command to a file
------------------------------------------
COPY (select table_name from information_schema.columns where column_name = 'company_code') TO '/data/total_table.csv' (format csv, delimiter ';')

\copy (select * from tempTable limit 100) to 'filenameinquotes' with header delimiter as ','


COPY (SELECT table_name FROM information_schema.columns WHERE column_name = 'company_code') TO '/data/table_list.csv' (format csv, delimiter ';')


COPY (SELECT table_name FROM information_schema.columns WHERE column_name = 'client_code') TO '/data/client_table_list.csv' (format csv, delimiter ';')



-- Delete rows from table 'table_name'
DELETE FROM ( SELECT table_name FROM information_schema.columns WHERE column_name = 'client_code' )
WHERE 	client_code != 'CTS';

