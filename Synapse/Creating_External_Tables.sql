-- CREATE MASTER KEY ENCRYPTION BY PASSWORD = ''

-- CREATE DATABASE SCOPED CREDENTIAL cred_vishal
-- WITH IDENTITY = 'Managed Identity'

-- CREATE EXTERNAL DATA SOURCE silver_source
-- WITH
-- (
--     LOCATION = 'https://myfirstazurestoragea.dfs.core.windows.net/silver',
--     CREDENTIAL = cred_vishal
-- )

-- CREATE EXTERNAL DATA SOURCE gold_source
-- WITH
-- (
--     LOCATION = 'https://myfirstazurestoragea.dfs.core.windows.net/gold',
--     CREDENTIAL = cred_vishal
-- )

-- CREATE EXTERNAL FILE FORMAT parquet_format
-- WITH
-- (
--     FORMAT_TYPE = PARQUET,
--     DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
-- )
