CREATE DATABASE SCOPED CREDENTIAL cred_sai
WITH IDENTITY = 'Managed Identity'
GO 

CREATE EXTERNAL DATA SOURCE source_silver
WITH(
    LOCATION = 'https://awdatastore.dfs.core.windows.net/silver',
    CREDENTIAL = cred_sai
)
GO

CREATE EXTERNAL DATA SOURCE source_gold
WITH(
    LOCATION = 'https://awdatastore.dfs.core.windows.net/gold',
    CREDENTIAL = cred_sai
)
GO