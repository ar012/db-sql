
----------------------------
-----date: 10-02-2019----------------------
-----commit id:  1e4f77bff8---------------
-----push id: 541fc7e9c4..f2680ded2f------------


-- Table: public.sys_options

-- DROP TABLE public.sys_options;

CREATE TABLE public.sys_options
(
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  gmap_api_key character varying,
  gmap_api_name character varying,
  google_email character varying,
  google_password character varying,
  expiry_date date,
  CONSTRAINT pk_sys_options PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);




ALTER TABLE public.hr_companies
ADD COLUMN gmap_api_key character varying,
ADD COLUMN gmap_api_name character varying,
ADD COLUMN google_email character varying,
ADD COLUMN google_password character varying,
ADD COLUMN expiry_date date;


update hr_companies set
  gmap_api_key = 'AIzaSyD5d_emOAbXpozsPbimyc6Ah55O0hL3ZDY',
  gmap_api_name = 'CtrendsEBS API Key',
  google_email = 'ctrends.software@gmail.com',
  google_password = '$2a$10$dSJK94HuOPte.78LNsD82ODuFLDNNSKplBEl/ZbrTh/8gAT2VtyeC',
  expiry_date = '2099-12-31';
