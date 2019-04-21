COPY eo_mw_links_raw FROM '/data/share/imcshare/mamunur.rahman/PG_data/MW_Links.txt' WITH DELIMITER E‘\t’ CSV HEADER;





-- data transfer from a table to another table
insert into eo_mw_link(eo_mw_link,)
select client_id
from razzak.ctrendsebs.public.eo_mw_link;



-- insert data from txt file to a table
COPY eo_mw_links_raw FROM '/data/share/public/abdur.razzak/TRM/MW_Links.txt' WITH delimiter E'\t' null as '' CSV HEADER;



COPY eo_mw_links_raw FROM '/home/abdurrazzak/Documents/MW_Links.txt' with delimiter E'\t' null as '' CSV HEADER;