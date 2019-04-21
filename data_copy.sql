

INSERT INTO nms_network_links(company_code, company_name, link_code, link_name, site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address)

SELECT company_code, company_name, link_code, link_name, site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address 
FROM eo_fiber_links LIMIT 100;




INSERT INTO nms_network_links(company_code, company_name, link_code, link_name, link_type, site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address)

SELECT 'BP', 'Bangladesh Police', link_code, link_name, 'Fiber', site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address 
FROM eo_fiber_links LIMIT 50;

--------------------


INSERT INTO nms_network_links(company_code, company_name, link_code, link_name, link_type, site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address)

SELECT 'BP', 'Bangladesh Police', mwlink_code, mwlink_name, 'Microwave', site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address 
FROM eo_mw_links ORDER BY id LIMIT 50 OFFSET 2000;


 
 
 
 INSERT INTO nms_network_links(company_code, company_name, link_code, link_name, link_type, site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address)

SELECT 'BP', 'Bangladesh Police', mwlink_code, mwlink_name, 'Microwave', site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address 
FROM eo_mw_links ORDER BY id LIMIT 50 OFFSET 2000;



INSERT INTO nms_network_links(company_code, company_name, link_code, link_name, link_type, site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address)

SELECT 'BP', 'Bangladesh Police', link_code, link_name, 'Fiber', site1_name, site1_latitude, site1_longitude, site2_name, site2_latitude, site2_longitude, link_capacity_mbps, site1_address, site2_address 
FROM eo_fiber_links LIMIT 50 OFFSET 20;




 
 select * from eo_mw_links ORDER BY id desc limit 50;


DELETE FROM nms_network_links
    WHERE link_type = 'Microwave';


