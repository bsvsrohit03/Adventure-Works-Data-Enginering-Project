------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUER1
GO

------------------------
-- CREATE VIEW CUSTOMER
------------------------
CREATE VIEW gold.customer
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUER1
GO

------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.products
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUER1
GO

------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUER1
GO

------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUER1
GO

------------------------------
-- CREATE VIEW SUB CATEGORIES
------------------------------
CREATE VIEW gold.subcategories
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_SubCategories/',
    FORMAT = 'PARQUET'
) AS QUER1
GO

---------------------------
-- CREATE VIEW TERRITORIES
---------------------------
CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awdatastore.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUER1
GO