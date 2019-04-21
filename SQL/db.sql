-- This lists databases:

SELECT datname FROM pg_database
WHERE datistemplate = false;

-- This lists tables in the current database
SELECT table_schema,table_name
FROM information_schema.tables
ORDER BY table_schema,table_name;



-- psql - save results of command to a file
db=>\o out.txt
db=>\dt
db=>\q


-- Save PL/pgSQL output from PostgreSQL to a CSV file
-- https://stackoverflow.com/questions/1517635/save-pl-pgsql-output-from-postgresql-to-a-csv-file

Copy (Select * From foo) To '/tmp/test.csv' With CSV DELIMITER ',';

COPY (SELECT * from users) To '/tmp/output.csv' With CSV;




DELETE FROM aa_settings
    WHERE company_code IN ('OMEGA', 'EBL', 'GLIL');




select * from eo_mw_links limit 10;

COPY (SELECT mwlink_code, mwlink_name, site1_latitude, site1_longitude, site1_altitude_ft, site2_latitude, site2_longitude, site2_altitude_ft FROM eo_mw_links limit 50)
 TO '/data/eo_mw_links.csv' DELIMITER ',' csv HEADER;


COPY (
SELECT row_to_json(row) FROM (SELECT mwlink_code, mwlink_name, site1_latitude, site1_longitude, site1_altitude_ft, site2_latitude, site2_longitude, site2_altitude_ft FROM eo_mw_links limit 50) row
) 
 TO '/data/eo_mw_links.JSON';




 COPY eo_fiber_links_data FROM '/data/BTS/robi-fiber-own-link.csv' WITH DELIMITER ',' CSV HEADER;


 --select * from eo_fiber_links_data

-- Table: public.eo_mw_links

-- DROP TABLE public.eo_fiber_links_data;

CREATE TABLE public.eo_fiber_links_data
(
  linkname character varying,
  site1name character varying,
  site2name character varying,
  site1lat double precision,
  site1long double precision,

  site2lat double precision,
  site2long double precision
);

ALTER TABLE eo_fiber_links_data
ADD COLUMN fiberlink_code character varying,

ADD COLUMN site1_altitude_ft double precision DEFAULT 0,
ADD COLUMN site2_altitude_ft double precision DEFAULT 0;


INSERT INTO eo_fiber_links_data
       ( fiberlink_code, site1_altitude_ft, site2_altitude_ft)
       VALUES (20001, 32.81, 32.81)


COPY eo_fiber_links_data FROM '/data/BTS/robi_fiber_link_all.csv' with delimiter ',' CSV HEADER;

COPY eo_fiber_links_data FROM '/data/BTS/robi-fiber-own-link.csv' WITH DELIMITER ',' CSV HEADER;

COPY (
SELECT row_to_json(row) FROM (SELECT * FROM eo_fiber_links_data) row
) 
 TO '/data/BTS/eo_fiber_links_data.JSON';




SELECT mwlink_code, mwlink_name, site1_code, site1_name, site1_latitude, site1_longitude, site1_altitude_ft, site2_code, site2_name, site2_latitude, site2_longitude, site2_altitude_ft 
FROM eo_mw_links limit 100;


COPY (
SELECT row_to_json(row) FROM (SELECT mwlink_code, mwlink_name, site1_code, site1_name, site1_latitude, site1_longitude, site1_altitude_ft, site2_code, site2_name, site2_latitude, site2_longitude, site2_altitude_ft 
FROM eo_mw_links limit 100) row
) 
 TO '/data/eo_mw_links_100.JSON';


 


COPY (
SELECT row_to_json(row) FROM (SELECT link_code, link_name, site1_code, site1_name, site1_latitude, site1_longitude, site1_altitude_ft,
   site2_code, site2_name, site2_latitude, site2_longitude, site2_altitude_ft 
FROM eo_fiber_links limit 1000) row
) 
 TO '/data/eo_fiber_links_1000.JSON';



 COPY (
SELECT row_to_json(row) FROM (SELECT msc_code, msc_name, latitude, longitude, altitude_ft
FROM eo_msc) row
) 
 TO '/data/eo_msc.JSON';



  COPY (
SELECT row_to_json(row) FROM (SELECT bts_code, bts_name, latitude, longitude, altitude_ft
 FROM eo_bts limit 5000
) row
) 
 TO '/data/eo_bts_5000.JSON';



 SELECT bts_code, bts_name, latitude, longitude, altitude_ft
 FROM eo_bts



