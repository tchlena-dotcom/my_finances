create database if not exists FINANCE_DB;
create schema if not exists FINANCE;
create warehouse if not exists FINANCE_WH;

use database FINANCE_DB;
use schema  FINANCE;
use warehouse FINANCE_WH;

create or alter stage finance_sources 
  DIRECTORY=(ENABLE=true);

CREATE OR REPLACE FILE FORMAT FINANCE_DB.FINANCE.finance_csv 
TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1;


-- LIST @FINANCE_DB.FINANCE.finance_sources/Monzo/;

