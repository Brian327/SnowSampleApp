
USE WAREHOUSE COMPUTE_XS;    -- your warehouse may be called  something different

USE SNOWFLAKE_SAMPLE_DATA;
USE SCHEMA TPCDS_SF10TCL;

SHOW TABLES;

SELECT * FROM TPCDS_SF10TCL.CUSTOMER LIMIT 100;
SELECT * FROM TPCDS_SF10TCL.CUSTOMER_ADDRESS LIMIT 100;
SELECT * FROM TPCDS_SF10TCL.CUSTOMER_DEMOGRAPHICS LIMIT 100;