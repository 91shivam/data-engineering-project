---CREATE MASTER KEY  ENCRYPTION BY PASSWORD = 'shivam@9326' 
CREATE DATABASE SCOPED CREDENTIAL cred_shivam
WITH 
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
with 
(
    LOCATION = 'https://awstoragelake.blob.core.windows.net/silver',
    CREDENTIAL = cred_shivam
)

create external DATA SOURCE source_gold
with 
(
    LOCATION = 'https://awstoragelake.blob.core.windows.net/gold',
    CREDENTIAL = cred_shivam
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION =  'org.apache.hadoop.io.compress.SnappyCodec'
)


--- create External table EXTSALES
-----------------------------------
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT*FROM gold.sales


SELECT *from gold.extsales;