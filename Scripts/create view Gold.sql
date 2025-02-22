CREATE SCHEMA gold;
-----------------------
-- create view Products
-----------------------
CREATE view gold.Products
as 
select 
    * 
from
    OPENROWSET(
        BULK 'https://awstoragelake.blob.core.windows.net/silver/trans_AdventureWorks__Products/',
        FORMAT = 'PARQUET'
    ) as query1

---create view returns 
CREATE view gold.returns
as 
select 
    * 
from
    OPENROWSET(
        BULK 'https://awstoragelake.blob.core.windows.net/silver/trans_AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as query1

---create view sales
CREATE view gold.sales
as 
select 
    * 
from
    OPENROWSET(
        BULK 'https://awstoragelake.blob.core.windows.net/silver/trans_AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) as query1

---create view sub-categories
CREATE view gold.subcategories
as 
select 
    * 
from
    OPENROWSET(
        BULK 'https://awstoragelake.blob.core.windows.net/silver/trans_AdventureWorks__Product_Subcategories/',
        FORMAT = 'PARQUET'
    ) as query1

---create view sub-categories
CREATE view gold.subcategories
as 
select 
    * 
from
    OPENROWSET(
        BULK 'https://awstoragelake.blob.core.windows.net/silver/trans_AdventureWorks__Product_Subcategories/',
        FORMAT = 'PARQUET'
    ) as query1


---create view Territories
CREATE view gold.Territories
as 
select 
    * 
from
    OPENROWSET(
        BULK 'https://awstoragelake.blob.core.windows.net/silver/trans_AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as query1


