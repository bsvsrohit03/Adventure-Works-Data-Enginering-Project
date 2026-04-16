---------------------------------
-- CREATE EXTERNAL TABLE EXTSALES
---------------------------------
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales
GO

-----------------------------------
-- CREATE EXTERNAL TABLE EXTCALENDAR
-----------------------------------
CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calendar
GO

-----------------------------------
-- CREATE EXTERNAL TABLE EXTCUSTOMERS
-----------------------------------
CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customer
GO

-----------------------------------
-- CREATE EXTERNAL TABLE EXTPRODUCTS
-----------------------------------
CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.products
GO

-----------------------------------
-- CREATE EXTERNAL TABLE EXTRETURNS
-----------------------------------
CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.returns
GO

-----------------------------------------
-- CREATE EXTERNAL TABLE EXTSUBCATEGORIES
-----------------------------------------
CREATE EXTERNAL TABLE gold.extsubcategories
WITH
(
    LOCATION = 'extsubcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.subcategories
GO

-------------------------------------
-- CREATE EXTERNAL TABLE EXTTERRITORIES
-------------------------------------
CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories
GO