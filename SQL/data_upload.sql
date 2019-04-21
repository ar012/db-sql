

rsync -rvhe ssh arazzak@192.168.100.201:/data/share/imcshare/mamunur.rahman/PG_data/TREG_requests.csv

reg_div_code  
reg_div_name

wf_status, trms_wf_status




select * from treg_approval_requests_raw


COPY treg_approval_requests_raw FROM '/home/abdurrazzak/Need-Files/TREG_requests.csv' WITH DELIMITER ',' CSV HEADER;


-- DROP TABLE public.treg_approval_requests_raw;

CREATE TABLE public.treg_approval_requests_raw
(
   id integer NOT NULL,
   client_id uuid,
   client_code character varying,
   client_name character varying,
   company_id uuid,
   company_code character varying,
   company_name character varying,

   req_type character varying default 'New Tariff Plan',
    refno character varying,
    req_description character varying,
    
    reg_div_code character varying default 'SS',
    reg_div_name character varying default 'Systems & Services',
    currency_code character varying default 'BDT',    
    
    doa_type_id uuid,
    doa_type_code character varying default 'ALL',
    doa_type_name character varying default 'ALL',
    doa_amount double precision default 0,
    doa_currency_code character varying default 'BDT',

   created_by_id uuid,
    created_by_code character varying,
   created_by_name character varying,
   created_by_username character varying,
   created_by_email character varying,
   created_by_company_code character varying,
   created_by_company_name character varying,
   created_at timestamp without time zone,
    updated_by_id uuid,
   updated_by_code character varying,
   updated_by_name character varying,
   updated_by_username character varying,
   updated_by_email character varying,
   updated_by_company_code character varying,
   updated_by_company_name character varying,
   updated_at timestamp without time zone,
    submitted_by_id uuid,
   submitted_by_code character varying,
   submitted_by_name character varying,
   submitted_by_username character varying,
   submitted_by_email character varying,
   submitted_by_company_code character varying,
   submitted_by_company_name character varying,
   submitted_at timestamp without time zone,
    approved_by_id uuid,
   approved_by_code character varying,
   approved_by_name character varying,
   approved_by_username character varying,
   approved_by_email character varying,
   approved_by_company_code character varying,
   approved_by_company_name character varying,
   approved_at timestamp without time zone,
    locked_by_id uuid,
   locked_by_code character varying,
   locked_by_name character varying,
   locked_by_username character varying,
   locked_by_email character varying,
   locked_by_company_code character varying,
   locked_by_company_name character varying,
   locked_at timestamp without time zone,
    
   is_locked boolean,
   status character varying,
   wf_status character varying default 'Approved',
   trms_wf_status character varying,

    
    trms_approved_by_id uuid,
   trms_approved_by_code character varying,
   trms_approved_by_name character varying,
   trms_approved_by_username character varying,
   trms_approved_by_email character varying,
   trms_approved_by_company_code character varying,
   trms_approved_by_company_name character varying,
   trms_approved_at timestamp without time zone,

   CONSTRAINT pk_treg_approval_requests PRIMARY KEY (id)
)
WITH (
   OIDS = FALSE
)
TABLESPACE pg_default;




COPY treg_approval_requests_raw FROM '/data/share/imcshare/mamunur.rahman/PG_data/TREG_requests.csv' WITH DELIMITER ',' CSV HEADER;

